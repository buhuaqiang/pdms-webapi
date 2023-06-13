/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼
import gridFooter from './Demo_Product/Demo_ProductGridFooter.vue';
let extension = {
  components: {
    //查詢界面擴展組件
    gridHeader: '',
    gridBody: '',
    gridFooter: gridFooter,
    //新建、編輯彈出框擴展組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: '', //指定某張表的權限(這里填寫表名,默認不用填寫)
  buttons: { view: [], box: [], detail: [] }, //擴展的按鈕
  text:"只需要一些簡單配置實現一對多",
  methods: {
    //下面這些方法可以保留也可以刪除
    onInit() {
      //框架初始化配置前，
      this.textInline = false;
      this.tableHeight = 300;
    },
    searchAfter(result) {
      //查詢后，清空原來記錄選中行的id
      // this.$store.getters.data().ProductId = null;
      return true;
    },
    //操作步驟1：主表點擊事件加載明細數據
    rowClick({ row, column, event }) {
      //vuex

      //緩存當前選中行的主鍵id
      this.$store.getters.data().ProductId = row.ProductId;

      //清除原來選中的行
      this.$refs.table.$refs.table.clearSelection();

      //查詢界面點擊行事件
      this.$refs.table.$refs.table.toggleRowSelection(row, true); //單擊行時選中當前行;

       //調用下面選項卡的查詢
       //見Demo_ProductGridFooter.vue文件rowClick方法
      this.$refs.gridFooter.rowClick(row);
    }
  }
};
export default extension;
