<template>
  <div class="service-select">
    <el-button link type="info" @click="showModel" :style="{color:color}"  round
      >
      {{ orgName }}<i style="margin-left: 5px;" class="el-icon-arrow-down"></i></el-button
    >
  </div>

  <div class="service-model">
    <el-drawer
      title="切換服務"
      v-model="model"
      direction="rtl"
      destroy-on-close
    >
      <div class="service-selector">
        <el-scrollbar class="el-role-list" style="height: 100%;">
          <el-tree
            highlight-current
            :current-node-key="selectCode"
            default-expand-all
            :data="tree"
            @node-click="nodeClick"
            node-key="id"
            :default-expanded-keys="[]"
            :expand-on-click-node="false"
            style="padding: 5px 0; margin-right: 2px"
          >
            <template #default="{ data }">
              <div class="action-group">
                {{ data.name }}
              </div>
            </template>
          </el-tree>
        </el-scrollbar>
      </div>
    </el-drawer>
  </div>
</template>
<script>
export default {
  props: {
    load: {
      type: Boolean,
      default: false
    },
    color: {
      type: String,
      default: "white",
    },
  },
  data() {
    return {
      selectCode: '',
      orgName: '請選擇學校',
      serviceList: [],
      tree: [],
      model: false
    };
  },
  created() {
    let list = this.$store.getters.getServiceList();
    list=JSON.parse(JSON.stringify(list))
    this.serviceList.push(...list);
    this.selectCode = localStorage.getItem('serviceId') || '';
    this.setCurrentServiceName();
    this.serviceList.forEach((x) => {
      if (!x.parentId) {
        x.lv = 1;
        x.children = [];
        this.tree.push(x);
        this.getTree(x.id, x);
      }
    });
  },
  methods: {
    setCurrentServiceName() {
      if (
        this.selectCode &&
        this.serviceList.length &&
        !this.serviceList.some((x) => {
          return x.id == this.selectCode;
        })
      ) {
        this.selectCode = null;
      }

      if (!this.multiple && this.serviceList.length && !this.selectCode) {
        this.selectCode = this.serviceList[0].id;
        this.orgName = this.serviceList[0].name;
      } else {
        this.orgName = (
          this.serviceList.find((x) => {
            return x.id == this.selectCode;
          }) || {}
        ).name;
      }
      localStorage.setItem('serviceId', this.selectCode || '');
    },
    getTree(id, data) {
      this.serviceList.forEach((x) => {
        if (x.parentId == id) {
          x.lv = data.lv + 1;
          if (!data.children) data.children = [];
          data.children.push(x);
          this.getTree(x.id, x);
        }
      });
    },
    showModel() {
      this.model = true;
    },
    // change() {
    //   localStorage.setItem('orgCode', this.selectCode);
    //   this.$emit('onChange', this.selectCode);
    // },
    nodeClick(node, selected) {
      this.model = false;
      this.selectCode = node.id;
      this.setCurrentServiceName();
      window.location.reload();
    }
  }
};
</script>
<style scoped lang="less">
.service-selector{
  height: 100%;
}
.service-select {
  button {
    color: #5a5a5a;
    height: 32px;
    padding: 2px 14px 0 14px;
    font-size: 14px !important;
  }
}
.service-model ::v-deep(.el-drawer__header) {
  height: 52px;
  line-height: 52px;
  margin-bottom: 0;
  padding: 10px;
  border-bottom: 1px solid #f0f0f0;
}
.action-group {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 15px;
}
</style>
