Ext.define('Admin.view.system.employee.ExtEmployee', {
    extend: 'Admin.ux.PageGrid',
    xtype: 'ext-employee',
    title: '教职工管理',
    viewModel: {
        stores: {
            data: {
                type: 'employee-store',
                autoLoad: true
            }
        }
    },
    controller:'extEmployee',
    listeners: {
        selectionchange: 'onSelectionChange'
    },
    columns: [
        {
            xtype: 'gridcolumnview',
            text: '姓名',
            dataIndex: 'fullName',
            width:200
        },
        { xtype:'gridcolumnview',text:'email', dataIndex: 'email'},
        { xtype:'gridcolumnview',text:'生日', dataIndex: 'birthday'},
        { xtype:'gridcolumnview',text:'手机号', dataIndex: 'mobile'},
        { xtype:'gridcolumnview',text:'姓名拼音', dataIndex: 'fpy'},
        { xtype:'gridcolumnview',text:'拼音简写', dataIndex: 'spy'},
        { xtype:'gridcolumnview',text:'联系地址', dataIndex: 'address'},
        { xtype:'gridcolumnview',text:'专业', dataIndex: 'major'},
        { xtype:'gridcolumnview',text:'创建时间', dataIndex: 'gmtCreate'},
        { xtype:'gridcolumnview',text:'最后修改时间', dataIndex: 'gmtModified'},
        { xtype:'gridcolumnview',text:'备注', dataIndex: 'remark'},
        {
            menuDisabled: true,
            sortable: false,
            xtype: 'actioncolumn',
            width: 100,
            text:'操作',
            items: [
                {
                    iconCls: 'array-grid-buy-col',
                    tooltip: '编辑',
                    handler:'editAction'
                },
                '-',
                {
                    iconCls: 'array-grid-sell-col',
                    tooltip: '删除',
                    handler: 'removeAction'
                }
            ]
        }
    ],
    tbar:[
        {
            text:'新教职工',
            iconCls: 'x-fa fa-plus',
            handler:'addAction'
        }
    ]
});
