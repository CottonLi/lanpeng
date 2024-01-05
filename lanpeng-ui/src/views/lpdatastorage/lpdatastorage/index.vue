<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入数据存储名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="组件名称" prop="moduleInfoName">
        <el-input
          v-model="queryParams.moduleInfoName"
          placeholder="请输入组件名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="组件标识符" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入组件标识符"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="数据库连接名称" prop="dbConnectionName">
        <el-input
          v-model="queryParams.dbConnectionName"
          placeholder="请输入数据库连接名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="描述" prop="description">
        <el-input
          v-model="queryParams.description"
          placeholder="请输入描述"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['lpdatastorage:lpdatastorage:add']"
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
          v-hasPermi="['lpdatastorage:lpdatastorage:edit']"
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
          v-hasPermi="['lpdatastorage:lpdatastorage:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['lpdatastorage:lpdatastorage:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="lpdatastorageList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="编号" align="center" prop="id" />
      <el-table-column label="数据存储名称" align="center" prop="name" />
      <el-table-column label="组件名称" align="center" prop="moduleInfoName" />
      <el-table-column label="组件标识符" align="center" prop="code" />
      <el-table-column label="组件类型" align="center" prop="type" />
      <el-table-column label="数据库连接名称" align="center" prop="dbConnectionName" />
      <el-table-column label="描述" align="center" prop="description" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['lpdatastorage:lpdatastorage:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['lpdatastorage:lpdatastorage:remove']"
          >删除</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-add"
            @click="jumptoitemconfiguration(scope.row)"
            v-hasPermi="['lpdatastorage:lpdatastorage:remove']"
          >详细配置</el-button>
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

    <!-- 添加或修改数据存储对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="数据存储名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入数据存储名称" />
        </el-form-item>
        <el-form-item label="组件选择" prop="moduleInfoId">
          <el-select v-model="form.moduleInfoId">
            <el-option v-for="(item, index) in lpmoduleinfoLists" :key="index" :label="item.name" :value="item.id" @click.native="selectModuleInfo(item)" >{{ item.name }}</el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="组件标识符" prop="code">
          <el-input v-model="form.code" placeholder="" readonly />
        </el-form-item>
        <el-form-item label="组件类型" prop="type">
          <el-input v-model="form.type" placeholder="" readonly />
        </el-form-item>
        <el-form-item label="数据库连接选择" prop="dbConnectionId">
          <el-select v-model="form.dbConnectionId">
            <el-option v-for="(item, index) in lpdbconnetionLists" :key="index" :label="item.name" :value="item.id">{{ item.name }}</el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="描述" prop="description">
          <el-input v-model="form.description" placeholder="请输入描述" />
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
import { listLpdatastorage, getLpdatastorage, delLpdatastorage, addLpdatastorage, updateLpdatastorage } from "@/api/lpdatastorage/lpdatastorage";
import { listLpdbconnection } from "@/api/lpdatastorage/lpdbconnection";
import { listLpmoduleinfo, getLpmoduleinfo } from "@/api/lpmoduleinfo/lpmoduleinfo";

export default {
  name: "Lpdatastorage",
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
      // 数据存储表格数据
      lpdatastorageList: [],
      lpdbconnetionLists:[],
      lpmoduleinfoLists:[],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: null,
        moduleInfoId: null,
        code: null,
        type: null,
        dbConnectionId: null,
        description: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        name: [
          { required: true, message: "数据存储名称不能为空", trigger: "blur" }
        ],
        moduleInfoId: [
          { required: true, message: "请选择组件", trigger: "blur" }
        ],
        code: [
          { required: true, message: "组件标识符不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "组件类型不能为空", trigger: "change" }
        ],
        dbConnectionId: [
          { required: true, message: "请选择数据库连接", trigger: "blur" }
        ],
        description: [
          { required: true, message: "描述不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询数据存储列表 */
    getList() {
      this.loading = true;
      listLpdatastorage(this.queryParams).then(response => {
        this.lpdatastorageList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
      listLpdbconnection().then(response => {
        this.lpdbconnetionLists = response.rows;
      });
      listLpmoduleinfo().then(response => {
        this.lpmoduleinfoLists = response.rows;
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
        name: null,
        moduleInfoId: null,
        code: null,
        type: null,
        dbConnectionId: null,
        description: null,
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
      this.title = "添加数据存储";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getLpdatastorage(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改数据存储";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateLpdatastorage(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addLpdatastorage(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除数据存储编号为"' + ids + '"的数据项？').then(function() {
        return delLpdatastorage(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 数据存储详细配置 */
    jumptoitemconfiguration(row)
    {
      this.$router.push({
        path:'/lpds/lpdsitem',
        query: { id:row.id }
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('lpdatastorage/lpdatastorage/export', {
        ...this.queryParams
      }, `lpdatastorage_${new Date().getTime()}.xlsx`)
    },
    selectModuleInfo(data)
    {
      getLpmoduleinfo(data.id).then(response => {
        this.form.code = response.data.code;
        if(response.data.type == 1)
          this.form.type = "错误";
        else if(response.data.type == 2)
          this.form.type = "净化组件";
        else if(response.data.type == 3)
          this.form.type = "算法组件";
        else if(response.data.type == 4)
          this.form.type = "传输组件";
        else if(response.data.type == 5)
          this.form.type = "存储组件";
        else if(response.data.type == 6)
          this.form.type = "控制组件";
      });
    }
  }
};
</script>
