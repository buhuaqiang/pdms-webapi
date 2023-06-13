<template>
  <div class="detail-table">
    <h3>訂單明細</h3>
    <vol-table
      style="padding: 0px 10px 10px;"
      ref="editTable1"
      :columns="columns"
      :max-height="270"
      :index="true"
      :tableData="rows"
      :pagination-hide="true"
    ></vol-table>
  </div>
</template>

<script>
import VolTable from '@/components/basic/VolTable.vue';
export default {
  components: { VolTable },
  data() {
    return {
      columns: [{field:'OrderList_Id',title:'OrderList_Id',type:'guid',width:110,hidden:true,require:true,align:'left'},
                       {field:'Order_Id',title:'Order_Id',type:'guid',width:110,hidden:true,align:'left'},
                       {field:'GoodsId',title:'商品id',type:'guid',width:110,hidden:true,align:'left'},
                       {field:'GoodsCode',title:'商品編號',type:'string',width:120,edit:{type:''},require:true,align:'left',sort:true},
                       {field:'GoodsName',title:'商品名稱',type:'string',width:120,edit:{type:''},require:true,align:'left'},
                       {field:'Img',title:'商品圖片',type:'img',width:100,align:'left'},
                       {field:'Specs',title:'商品規格',type:'string',bind:{ key:'商品規格',data:[]},width:120,edit:{type:'select'},align:'left'},
                       {field:'Price',title:'單價',type:'decimal',width:110,edit:{type:''},require:true,align:'left'},
                       {field:'Qty',title:'數量',type:'int',width:110,edit:{type:''},require:true,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'創建人',type:'string',width:100,align:'left'},
                       {field:'CreateDate',title:'創建時間',type:'datetime',width:145,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,hidden:true,align:'left',sort:true}],
      rows: []
    };
  },
  methods:{
      rowClick(row){
          let url="api/Demo_Order/getDetailRows?Order_Id="+row.Order_Id
          this.http.get(url,{},true).then(rows=>{
              this.rows=rows;
          })
      }
  }
};
</script>

<style lang="less" scoped>
.detail-table{
    padding: 0px 4px;
    border-top: 10px solid rgb(238, 238, 238);
    h3{
        font-weight: 500;
        padding-left: 10px;
        background: #fff;
        margin-top: 8px;
        padding-bottom: 5px;
    }
}
</style>