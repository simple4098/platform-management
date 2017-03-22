Ext.define('Admin.view.system.dept.DeptForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'dept-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
        {
            xtype: 'textfield',
            name:'dept_name',
            fieldLabel: '部门名称',
            emptyText:'请输入部门名称',
            maxLength:20
        },
        {
            xtype: 'textareafield',
            name:'dept_desc',
            rows:2,
            allowBlank:true,
            fieldLabel: '职能描述',
            maxLength:500
        }
        
    ]
});
