Ext.define('Admin.view.system.plugin.PluginForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'plugin-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
        {
            xtype: 'textfield',
            name:'pluginName',
            emptyText:'请输入插件名称',
            fieldLabel: '插件名称',
            minLength:2,
            maxLength:10
        },
         {
            xtype: 'textfield',
            name:'pluginUrl',
            emptyText:'请输入插件URL',
            fieldLabel: '插件URL'
        },
        {
            xtype: 'textfield',
            name:'versionNum',
            emptyText:'请输入号版本号',
            fieldLabel: '插件版本'
        },
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
        {	xtype:'hiddenfield',name:'failueTime',id:'failueTime'},
        {
            xtype: 'textfield',
            name:'publisher',
            emptyText:'请输入发布商',
            fieldLabel: '发行商家'
        },
        /*{
            xtype: 'combo',
            fieldLabel: '插件类型',
            name:'pluginType',
            queryMode: 'remote',
            minChars: 2,
            displayField: 'value',
            valueField: 'name',
            store : Ext.create('Ext.data.Store', {
                fields: ["name",'value'],
                proxy: {
                    type: 'ajax',
                    url:'/common/plugin-type',
                    reader: {
                        type: 'json'
                    }
                },
                autoLoad:true
            })
        },*/
        {
            xtype: 'combo',
            fieldLabel: '插件类型',
            name:'pluginTypeId',
            queryMode: 'remote',
            minChars: 2,
            displayField: 'pluginTypeName',
            valueField: 'id',
            store : Ext.create('Ext.data.Store', {
                fields: ["id",'pluginTypeName'],
                proxy: {
                    type: 'ajax',
                    url:'/plugin-type/list-all',
                    reader: {
                        type: 'json'
                    }
                },
                autoLoad:true
            })
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