<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代碼由框架生成,任何更改都可能導致被代碼生成器覆蓋
 *業務請在@/extension/sys/system/Sys_Region.js此處編寫
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
    import extend from "@/extension/sys/system/Sys_Region.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'id',
                footer: "Foots",
                cnName: '省市區縣',
                name: 'system/Sys_Region',
                url: "/Sys_Region/",
                sortName: "id"
            });
            const editFormFields = ref({});
            const editFormOptions = ref([]);
            const searchFormFields = ref({"name":"","level":"","mername":"","pinyin":""});
            const searchFormOptions = ref([[{"title":"名稱","field":"name"},{"title":"級別","field":"level","type":"number"},{"title":"完整地址","field":"mername","type":"like"},{"title":"拼音","field":"pinyin","type":"like"}]]);
            const columns = ref([{field:'id',title:'id',type:'int',width:110,hidden:true,require:true,align:'left'},
                       {field:'code',title:'編碼',type:'string',width:70,align:'left',sort:true},
                       {field:'name',title:'名稱',type:'string',width:100,align:'left'},
                       {field:'parentId',title:'上級編碼',type:'int',width:70,align:'left'},
                       {field:'level',title:'級別',type:'int',width:60,align:'left'},
                       {field:'mername',title:'完整地址',type:'string',width:170,align:'left'},
                       {field:'Lng',title:'經度',type:'float',width:70,align:'left'},
                       {field:'Lat',title:'緯度',type:'float',width:70,align:'left'},
                       {field:'pinyin',title:'拼音',type:'string',width:120,align:'left'}]);
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
