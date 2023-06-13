<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代碼由框架生成,任何更改都可能導致被代碼生成器覆蓋
 *業務請在@/extension/system/product/Demo_ProductColor.js此處編寫
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
    import extend from "@/extension/dbtest/product/Demo_ProductColor.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'ProductColorId',
                footer: "Foots",
                cnName: '產品顏色',
                name: 'product/Demo_ProductColor',
                url: "/Demo_ProductColor/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"Color":"","Qty":"","Unit":"","Remark":"","Img":""});
            const editFormOptions = ref([[{"dataKey":"顏色","data":[],"title":"顏色","required":true,"field":"Color","type":"radio"}],
                              [{"title":"數量","required":true,"field":"Qty"}],
                              [{"dataKey":"單位","data":[],"title":"單位","required":true,"field":"Unit","type":"select"}],
                              [{"title":"備注","field":"Remark"}],
                              [{"title":"圖片","required":true,"field":"Img","type":"img"}]]);
            const searchFormFields = ref({"Color":"","Qty":"","Unit":"","CreateDate":""});
            const searchFormOptions = ref([[{"dataKey":"顏色","data":[],"title":"顏色","field":"Color","type":"select"},{"title":"數量","field":"Qty"},{"dataKey":"單位","data":[],"title":"單位","field":"Unit","type":"select"},{"title":"創建時間","field":"CreateDate","type":"datetime"}]]);
            const columns = ref([{field:'ProductColorId',title:'ProductColorId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'ProductId',title:'商品id',type:'guid',width:110,hidden:true,align:'left'},
                       {field:'Color',title:'顏色',type:'string',bind:{ key:'顏色',data:[]},width:100,require:true,align:'left',sort:true},
                       {field:'Qty',title:'數量',type:'string',link:true,width:90,require:true,align:'left'},
                       {field:'Unit',title:'單位',type:'string',bind:{ key:'單位',data:[]},width:90,require:true,align:'left'},
                       {field:'Img',title:'圖片',type:'img',width:90,require:true,align:'left'},
                       {field:'Remark',title:'備注',type:'string',width:130,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'創建人',type:'string',width:110,align:'left'},
                       {field:'CreateDate',title:'創建時間',type:'datetime',width:150,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:110,align:'left'},
                       {field:'ModifyDate',title:'修改時間',type:'datetime',width:200,align:'left',sort:true}]);
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
