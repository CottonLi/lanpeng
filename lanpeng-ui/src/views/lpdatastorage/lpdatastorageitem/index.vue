<template>
  <div class="app-container">
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['lpdatastorage:lpdatastorageitem:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['lpdatastorage:lpdatastorageitem:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['lpdatastorage:lpdatastorageitem:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['lpdatastorage:lpdatastorageitem:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="lpdatastorageitemList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="编号" align="center" prop="id" />
      <el-table-column label="所属数据存储" align="center" prop="dataStorageName" />
      <el-table-column label="数据项名称" align="center" prop="dataItemName" />
      <el-table-column label="数据库表" align="center" prop="tableName" />
      <el-table-column label="数据库列" align="center" prop="columnName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['lpdatastorage:lpdatastorageitem:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['lpdatastorage:lpdatastorageitem:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改数据存储项对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="数据项选择" prop="dataItemId">
          <el-select v-model="form.dataItemId">
            <el-option v-for="(item, index) in lpdataitemLists" :key="index" :label="item.dataName" :value="item.id">{{ item.dataName }}</el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="数据库表" prop="tableName">
          <el-input v-model="form.tableName" placeholder="请输入数据库表" />
        </el-form-item>
        <el-form-item label="数据库列" prop="columnName">
          <el-input v-model="form.columnName" placeholder="请输入数据库列" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listLpdatastorageitem, getLpdatastorageitem, delLpdatastorageitem, addLpdatastorageitem, updateLpdatastorageitem } from "@/api/lpdatastorage/lpdatastorageitem";
import { listLpdataitem } from "@/api/lpdatastorage/lpdataitem";

export default {
  name: "Lpdatastorageitem",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      selectid: 0,
      // 数据存储项表格数据
      lpdatastorageitemList: [],
      lpdataitemLists: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        dataStorageId: null,
        dataItemId: null,
        tableName: null,
        columnName: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        dataItemId: [
          { required: true, message: "请选择数据项", trigger: "blur" }
        ],
        tableName: [
          { required: true, message: "数据库表不能为空", trigger: "blur" }
        ],
        columnName: [
          { required: true, message: "数据库列不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created()
  {
    this.selectid =  this.$route.query.id;
    this.getList();
  },
  methods: {
    /** 查询数据存储项列表 */
    getList() {
      this.loading = true;
      listLpdatastorageitem(this.selectid).then(response => {
        this.lpdatastorageitemList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
      listLpdataitem().then(response => {
        this.lpdataitemLists = response.rows;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        //dataStorageId: null,
        dataItemId: null,
        tableName: null,
        columnName: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加数据存储项";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getLpdatastorageitem(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改数据存储项";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateLpdatastorageitem(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            this.form.dataStorageId = this.selectid;
            addLpdatastorageitem(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除数据存储项编号为"' + ids + '"的数据项？').then(function() {
        return delLpdatastorageitem(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('lpdatastorage/lpdatastorageitem/export', {
        ...this.queryParams
      }, `lpdatastorageitem_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
