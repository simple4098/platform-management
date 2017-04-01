Ext.define('Admin.view.system.school.ExtSchool', {
    extend: 'Admin.ux.PageGrid',
    xtype: 'ext-school',
    title: '学校管理',
    viewModel: {
        stores: {
            data: {
                type: 'school-store',
                autoLoad: true
            }
        }
    },
    controller:'extSchool',
    listeners: {
        selectionchange: 'onSelectionChange'
    },
    columns: [
        {
            xtype: 'gridcolumnview',
            text: '名称',
            dataIndex: 'schoolName',
            width:200
        },
        {
            text:'学校类型',
            dataIndex: 'type',
            renderer:function (value, meta, record) {
                var typeName;
                if(value){
                    typeName = Ext.create('Admin.ux.SchoolType').getSchoolTypeName(value);
                    meta.tdAttr = 'data-qtip="' + value + '"';
                }
                return typeName;
            }
        },
        { xtype:'gridcolumnview',text:'地址', dataIndex: 'address'},
        { xtype:'gridcolumnview',text:'创建时间', dataIndex: 'gmtCreate'},
        { xtype:'gridcolumnview',text:'最后修改时间', dataIndex: 'gmtModified'},
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
            text:'创建学校',
            iconCls: 'x-fa fa-plus',
            handler:'addAction'
        }
    ]
});
