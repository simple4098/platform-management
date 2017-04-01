Ext.define('Admin.view.system.employee.EmployeeForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'employee-form',
    items: [
    	{	xtype:'hiddenfield',name:'schoolId'	},
        {
            xtype: 'textfield',
            name:'fullName',
            fieldLabel: '姓名',
            emptyText:'请输入姓名',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'mobile',
            rows:2,
            allowBlank:true,
            fieldLabel: '手机号',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'email',
            rows:2,
            allowBlank:true,
            fieldLabel: 'email',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'birthday',
            rows:2,
            allowBlank:true,
            fieldLabel: '生日',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'fpy',
            rows:2,
            allowBlank:true,
            fieldLabel: '姓名拼音',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'spy',
            rows:2,
            allowBlank:true,
            fieldLabel: '拼音简写',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'major',
            rows:2,
            allowBlank:true,
            fieldLabel: '专业',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'address',
            rows:2,
            allowBlank:true,
            fieldLabel: '联系地址',
            maxLength:500
        },
        {
            xtype: 'textareafield',
            name:'remark',
            rows:2,
            allowBlank:true,
            fieldLabel: '备注',
            maxLength:500
        }

    ]
});
