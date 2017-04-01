Ext.define('Admin.view.system.pluginType.PluginTypeForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'plugin-type-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
        {
            xtype: 'textfield',
            name:'pluginTypeName',
            emptyText:'请输入插件类型名称',
            fieldLabel: '插件类型',
            minLength:2,
            maxLength:10
        },
        {
            xtype: 'radiogroup',
            fieldLabel: '状态',
            columns: 8,
            items: [
                {boxLabel: '启用', name: 'status', inputValue: 1, checked: true},
                {boxLabel: '禁用', name: 'status', inputValue: 0}
            ]
        }
    ]
});