<template>
  <div>
    <vol-box
      v-model="model"
      :padding="10"
      :title="row.RoleName"
      :width="1200"
      :height="height"
    >
      <el-tree
        @check-change="leftCheckChange"
        @check="nodeCheck"
        :data="roleTree"
        :show-checkbox="false"
        style="padding: 0px"
        node-key="id"
        default-expand-all
        :expand-on-click-node="false"
      >
        <template #default="{ data }">
          <div class="action-group">
            <div
              class="action-text"
              :style="{ width: (4 - data.lv) * 18 + 150 + 'px' }"
            >
              <el-checkbox v-model="data.leftCk" @change="allChange(data)">{{
                data.text + (data.isApp ? '(app)' : '')
              }}</el-checkbox>
            </div>
            <div class="action-item">
              <el-checkbox
                v-for="(item, index) in data.actions"
                :key="index"
                v-model="item.checked"
                @change="actionChange(data, item.checked)"
                >{{ item.text }}</el-checkbox
              >
            </div>
          </div>
        </template>
      </el-tree>
      <template #footer>
        <div style="text-align: center;">
          <el-button type="info" size="small" @click="model = false"
            >關閉</el-button
          >
          <el-button type="primary" size="small" @click="save">保存</el-button>
        </div>
      </template>
    </vol-box>
  </div>
</template>
<script>
import { defineComponent, defineAsyncComponent } from 'vue';
export default defineComponent({
  components: {
    VolBox: defineAsyncComponent(() => import('@/components/basic/VolBox.vue'))
  },
  data() {
    return {
      isInit: false,
      height: 200,
      row: {},
      model: false,
      roleList: [],
      roleTree: [],
      roles: []
    };
  },
  methods: {
    async open(row) {
      this.row = row;
      if (!this.isInit) {
        await this.getCurrentTreePermission();
        this.isInit = true;
      }
      this.roleList.forEach(x=>{
        x.leftCk=false;
      })

      this.getUserRole();
      this.model = true;
    },
    save() {
      let userPermissions = [];
      this.roleList.forEach((x) => {
        let checkedPermission = x.actions.filter((f) => {
          return f.checked;
        });
        if (checkedPermission.length > 0) {
          let actions = checkedPermission.map((m) => {
            return { text: m.text, value: m.value };
          });
          userPermissions.push({
            id: x.id,
            actions: actions
          });
        }
      });
      let url = `api/role/SavePermission?roleId=${this.row.Role_Id}`;
      this.http.post(url, userPermissions, true).then((result) => {
        this.$message[result.status ? 'success' : 'error'](result.message);
      });
    },
    leftCheckChange(node, selected) {
      node.actions.forEach((x, index) => {
        x.checked = selected;
      });
    },
    nodeCheck(node, data) {
      let rootData = roleList.find((x) => {
        return x.id === node.pid;
      });
      if (rootData && rootData.actions.length) {
        rootData.actions[0].checked =
          node.actions.some((x) => {
            return x.checked;
          }) ||
          data.halfCheckedNodes.some((x) => {
            return x.id === node.pid;
          });
      }
    },
    allChange(data) {
      data.actions.forEach((item) => {
        item.checked = data.leftCk;
      });
      if (!data.children) {
        return;
      }
      this.setChildrenChecked(data, data.leftCk);
    },
    setChildrenChecked(data, ck) {
      data.children.forEach((item) => {
        item.leftCk = ck;
        item.actions.forEach((c) => {
          c.checked = ck;
        });
        if (item.children) {
          this.setChildrenChecked(item, ck);
        }
      });
    },
    actionChange(data, ck) {
      ck =
        data.actions.filter((x) => {
          return x.checked;
        }).length == data.actions.length;
      data.leftCk = ck;
    },
    async getCurrentTreePermission() {
      let url = '/api/role/getCurrentTreePermission';
      await this.http.post(url, {}, true).then((result) => {
        if (!result.status) return;
        this.roleList.splice(0);
        this.roles.splice(0);
        this.roleList.push(...result.data.tree);
        this.roles.push(...result.data.roles);
        this.roleList.forEach((x) => {
          if (x.pid == 0) {
            x.lv = 1;
            x.children = [];
            this.roleTree.push(x);
            this.getRoleTree(x.id, x);
          }
        });
      });
    },
    getRoleTree(id, data, isRootId) {
      this.roleList.forEach((x) => {
        if (x.pid == id) {
          x.lv = data.lv + 1;
          if (isRootId) {
            x.rootId = id;
          }
          if (!data.children) data.children = [];
          data.children.push(x);
          this.getRoleTree(x.id, x, isRootId);
        }
      });
    },
    getUserRole() {
      this.roleList.forEach((x) => {
        x.actions.forEach((a) => {
          a.checked = false;
        });
      });
      let url = `/api/role/getUserTreePermission?roleId=${this.row.Role_Id}`;
      this.http.post(url, {}, true).then((result) => {
        if (!result.status) return;
        result.data.forEach((item) => {
          if (item.actions.length == 0) return;
          let sourceItem = this.roleList.find((f) => f.id == item.id);
          if (!sourceItem) return;
          item.actions.forEach((actions) => {
            sourceItem.actions.forEach((soure) => {
              soure.leftCk = false;
              if (soure.value == actions.value) {
                soure.checked = true;
              }
            });
          });
        });
      });
    }
  },
  created() {
    this.height = document.body.clientHeight * 0.85;
  }
});
</script>

<style lang="less" scoped>
.action-group {
  display: flex;
  // line-height: 32px;
  justify-content: center;
  align-items: center;
  label {
    float: left;
  }
  .action-text {
    line-height: 33px;
    label {
      margin-right: 5px;
    }
  }
}

.title {
  padding: 10px;
  background: rgb(246 250 255);
  font-weight: bold;
  font-size: 14px;
  letter-spacing: 2px;
}
.el-role-list {
  flex: 1;
  height: 0;
  overflow-x: hidden;
}

::v-deep(.el-tree-node__content) {
  margin-bottom: 5px;
  height: auto;
}
::v-deep(.el-checkbox__label) {
  position: relative;
  top: 2px;
}
</style>
