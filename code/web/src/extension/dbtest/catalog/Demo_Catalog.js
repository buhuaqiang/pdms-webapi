/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼

let extension = {
  components: {
    //查詢界面擴展組件
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //新建、編輯彈出框擴展組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: '', //指定某張表的權限(這里填寫表名,默認不用填寫)
  buttons: { view: [], box: [], detail: [] }, //擴展的按鈕
  methods: {
    //下面這些方法可以保留也可以刪除
    onInit() {
      //示例：設置修改新建、編輯彈出框字段標簽的長度
      // this.boxOptions.labelWidth = 150;
      //顯示所有查詢條件
      this.setFiexdSearchForm(true);

      //設置主鍵字段
      this.rowKey = 'CatalogId';
    },
    dicInited (params) { //數據源加載完成時的方法,2022.04.04更新method.js文件后才能使用

    },
    onInited() {
      this.height = this.height - 86;
      //框架初始化配置后
      //如果要配置明細表,在此方法操作
      //this.detailOptions.columns.forEach(column=>{ });
      this.boxOptions.height = 390;
    },
    /***加載后臺數據見Demo_CatalogController.cs文件***/
    loadTreeChildren(tree, treeNode, resolve) {
      //加載子節點
      let url = `api/Demo_Catalog/getChildrenData?catalogId=${tree.CatalogId}`;
      this.http.post(url, {}).then((result) => {
        resolve(result.rows);
      });
    },
    /***加載后臺數據見Demo_CatalogController.cs文件***/
    searchBefore(params) {
      //查詢前的方法，如果沒有輸入查詢條件，默認顯示一級節點的數據
      if (params.wheres.length == 0) {
        params.value = 1;
      }
      return true;
    },
    addAfter() {
      //新建后刷新下級聯的數據字典
      this.initDicKeys();
      return true;
    },
    updateAfter() {
      //編輯后刷新下級聯的數據字典
      this.initDicKeys();
      return true;
    },
    delAfter() {
      //刪除后刷新下級聯的數據字典
      this.initDicKeys();
      return true;
    },
  }
};
export default extension;
