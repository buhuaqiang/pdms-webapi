<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代碼由框架生成,任何更改都可能導致被代碼生成器覆蓋
 *業務請在@/extension/system/product/Demo_Product.js此處編寫
 -->
<template>
    <view-grid ref="grid"
               :columns="columns"
               :detail="detail"
               :editFormFields="editFormFields"
               :editFormOptions="editFormOptions"
               :searchFormFields="searchFormFields"
               :searchFormOptions="searchFormOptions"
               :table="table"
               :extend="extend">
    </view-grid>
</template>
<script>
    import extend from "@/extension/dbtest/product/Demo_Product.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'ProductId',
                footer: "Foots",
                cnName: '產品管理',
                name: 'product/Demo_Product',
                url: "/Demo_Product/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"ProductName":"","ProductCode":"","Price":"","Remark":""});
            const editFormOptions = ref([[{"title":"商品名稱","required":true,"field":"ProductName"}],
                              [{"title":"商品編號","required":true,"field":"ProductCode"}],
                              [{"title":"價格","required":true,"field":"Price","type":"number"}],
                              [{"title":"備注","field":"Remark"}]]);
            const searchFormFields = ref({"ProductName":"","ProductCode":"","AuditStatus":"","CreateDate":""});
            const searchFormOptions = ref([[{"title":"商品名稱","field":"ProductName","type":"like"},{"title":"商品編號","field":"ProductCode","type":"like"},{"dataKey":"audit","data":[],"title":"審核狀態","field":"AuditStatus","type":"select"},{"title":"創建時間","field":"CreateDate","type":"datetime"}]]);
            const columns = ref([{field:'ProductId',title:'ProductId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'ProductName',title:'商品名稱',type:'string',link:true,width:150,require:true,align:'left',sort:true},
                       {field:'ProductCode',title:'商品編號',type:'string',width:120,require:true,align:'left'},
                       {field:'Price',title:'價格',type:'decimal',width:90,require:true,align:'left'},
                       {field:'AuditStatus',title:'審核狀態',type:'int',bind:{ key:'audit',data:[]},width:80,align:'left'},
                       {field:'Remark',title:'備注',type:'string',width:120,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'創建人',type:'string',width:110,align:'left'},
                       {field:'CreateDate',title:'創建時間',type:'datetime',width:150,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:110,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'修改時間',type:'datetime',width:200,hidden:true,align:'left',sort:true}]);
            const detail = ref({
                cnName: "#detailCnName",
                table: "#detailTable",
                columns: [],
                sortName: "",
                key: ""
            });
            return {
                table,
                extend,
                editFormFields,
                editFormOptions,
                searchFormFields,
                searchFormOptions,
                columns,
                detail,
            };
        },
    });
</script>
