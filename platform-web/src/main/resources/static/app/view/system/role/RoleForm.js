Ext.define('Admin.view.system.role.RoleForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'role-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
        {
            xtype: 'textfield',
            name:'role_name',
            fieldLabel: '角色名称'
        },
        {
            xtype: 'textareafield',
            name:'role_desc',
            rows:2,
            allowBlank:true,
            emptyText:'角色描述',
            fieldLabel: '描述'
        },
        {
            xtype: 'radiogroup',
            fieldLabel: '角色状态',
            columns: 6,
            items: [
                {boxLabel: '启用', name: 'row_status', inputValue: 0, checked: true},
                {boxLabel: '禁用', name: 'row_status', inputValue: 1}
            ]
        }
        
        
    ]
});
