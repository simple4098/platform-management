Ext.define('Admin.view.system.pluginAuth.PluginAuthDisplayForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'plugin-auth-display-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'},
        {
            xtype: 'displayfield',
            fieldLabel: '学校名称',
            name:'businessName'
        },
        {	xtype:'hiddenfield',name:'businessId',id:'businessId'},
        {
            xtype: 'datefield',
            name:'failueTimeValue',
            emptyText:'请输入插件失效时间',
            fieldLabel: '失效时间',
            format : 'Y-m-d',
            width : 100,
            listeners:{
                'change':function(value){
                    Ext.getCmp("failueTime").setValue(value.rawValue);
                }
            }
        },
        {	xtype:'hiddenfield',name:'failueTime',id:'failueTime'}
        ,
        {
            xtype: 'tagfield',
            fieldLabel: '插件名称',
            emptyText:'插件名称',
            id:'pluginIds',
            displayField: 'pluginName',
            valueField: 'id',
           /* queryMode: 'remote',
            mode : 'remote',*/
            minChars :1,
            remoteFilter: true,
            editable :true,
            forceSelection :true,
            filterPickList: true,
            name:'pluginIds',
            store: Ext.create('Ext.data.Store',{
                fields: ["id",'pluginName'],
                proxy: {
                    type: 'ajax',
                    url:'/plugin/list-all',
                    reader: {
                        type: 'json'
                    }
                },
                autoLoad:true
            })
        }
        ,
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