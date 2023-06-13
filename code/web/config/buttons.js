
let buttons = [{
    name: "查詢",
    value: 'Search',
    icon: 'el-icon-search',
    class: '',
    type: 'primary',
    onClick: function () {
        this.search();
    }
},
{
    name: "新建",
    icon: 'el-icon-plus',
    value: 'Add',
    class: '',
    //  plain:true,
    type: 'success',
    // plain:true,
    onClick: function () {
        this.add();
    }
}, {
    name: "編輯",
    icon: 'el-icon-edit',
    value: 'Update',
    // plain:true,
    class: '',
    type: 'primary',
    onClick: function () {
        this.edit();
    }
}, {
    name: "刪除",
    icon: 'el-icon-delete',
    class: '',
    value: 'Delete',
    type: 'danger',
    onClick: function () {
        this.del();
    }
}, {
    name: "審核",
    icon: 'el-icon-check',
    class: '',
    value: 'Audit',
    plain: true,
    type: 'primary',
    onClick: function () {
        this.audit();
    }
},
{
    name: "導入",
    icon: 'el-icon-top',
    class: '',
    type: 'success',
    plain: true,
    value: 'Import',
    onClick: function () {
        this.import();
    }
}, {
    name: "導出",
    icon: 'el-icon-bottom',
    type: 'success',
    plain: true,
    value: 'Export',
    onClick: function () {
        this.export();
    }
}
    // , {
    //     name: "數據結構",
    //     icon: 'ios-cog',
    //     class: '',
    //     value: '',
    //     onClick: function () {
    //         this.openViewColumns();
    //     }
    // }
]

export default buttons