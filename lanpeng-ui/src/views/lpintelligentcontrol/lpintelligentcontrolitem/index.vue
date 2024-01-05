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
          v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:add']"
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
          v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:edit']"
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
          v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="lpintelligentcontrolitemList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="编号" align="center" prop="id" />
      <el-table-column label="智能控制名称" align="center" prop="intelligentControlName" />
      <el-table-column label="数据项名称" align="center" prop="dataItemName" />
      <el-table-column label="长度" align="center" prop="length" />
      <el-table-column label="描述" align="center" prop="description" />
      <el-table-column label="接口参数名字" align="center" prop="interfaceParameter" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['lpintelligentcontrol:lpintelligentcontrolitem:remove']"
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

    <!-- 添加或修改智能控制项对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="数据项编号" prop="dataItemId">
          <el-select v-model="form.dataItemId">
            <el-option v-for="(item, index) in lpdataitemLists" :key="index" :label="item.dataName" :value="item.id">{{ item.dataName }}</el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="长度" prop="length">
          <el-input v-model="form.length" placeholder="请输入长度" />
        </el-form-item>
        <el-form-item label="描述" prop="description">
          <el-input v-model="form.description" placeholder="请输入描述" />
        </el-form-item>
        <el-form-item label="接口参数名字" prop="interfaceParameter">
          <el-input v-model="form.interfaceParameter" placeholder="请输入接口参数名字" />
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
import { listLpintelligentcontrolitem, getLpintelligentcontrolitem, delLpintelligentcontrolitem, addLpintelligentcontrolitem, updateLpintelligentcontrolitem } from "@/api/lpintelligentcontrol/lpintelligentcontrolitem";
import { listLpdataitem } from "@/api/lpdatastorage/lpdataitem";

export default {
  name: "Lpintelligentcontrolitem",
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
      // 智能控制项表格数据
      lpintelligentcontrolitemList: [],
      lpdataitemLists: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        intelligentControlId: null,
        dataItemId: null,
        length: null,
        description: null,
        interfaceParameter: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        dataItemId: [
          { required: true, message: "请选择数据项", trigger: "blur" }
        ],
        length: [
          { required: true, message: "长度不能为空", trigger: "blur" }
        ],
        description: [
          { required: true, message: "描述不能为空", trigger: "blur" }
        ],
        interfaceParameter: [
          { required: true, message: "接口参数名字不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.selectid =  this.$route.query.id;
    this.getList();
  },
  methods: {
    /** 查询智能控制项列表 */
    getList() {
      this.loading = true;
      listLpintelligentcontrolitem(this.selectid).then(response => {
        this.lpintelligentcontrolitemList = response.rows;
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
        //intelligentControlId: null,
        dataItemId: null,
        length: null,
        description: null,
        interfaceParameter: null,
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
      this.title = "添加智能控制项";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getLpintelligentcontrolitem(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改智能控制项";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateLpintelligentcontrolitem(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            this.form.intelligentControlId = this.selectid;
            addLpintelligentcontrolitem(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除智能控制项编号为"' + ids + '"的数据项？').then(function() {
        return delLpintelligentcontrolitem(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('lpintelligentcontrol/lpintelligentcontrolitem/export', {
        ...this.queryParams
      }, `lpintelligentcontrolitem_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
