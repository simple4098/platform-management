Ext.define('Admin.view.system.pluginAuth.PluginAuthForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'plugin-auth-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'},
        {
            xtype: 'combo',
            fieldLabel: '学校名称',
            name:'businessId',
            queryMode: 'remote',
            forceSelection : true,
            autoSelect:false,
            editable : true,
            minChars: 2,
            displayField: 'pluginName',
            queryParam:'schoolName',
            allowBlank:true,
            store :new Ext.data.JsonStore({
                fields : [ 'schoolName','schoolId'],
                proxy: {
                    type: 'ajax',
                    url:Ext.requestIP+'school/search',
                    reader: {
                        type: 'json',
                         root:'data'
                    }
                },
            }),
            typeAhead: false,
            loadingText :'正在加载',
            mode : 'remote',
            valueField: 'schoolId',
            displayField : 'schoolName',
            hiddenName:'schoolName',
            width:300,
            listeners:{
                'change':function(value){
                    Ext.getCmp("businessName").setValue(value.lastMutatedValue);
                }
            }
        },
        {	xtype:'hiddenfield',name:'businessName',id:'businessName'},
        {
            xtype: 'datefield',
            name:'failueTime',
            emptyText:'请输入插件失效时间',
            fieldLabel: '失效时间',
            format : 'Y-m-d',
            width : 100,
            editable : false
        },
        {
            xtype: 'tagfield',
            fieldLabel: '插件名称',
            emptyText:'插件名称',
            id:'pluginIds',
            displayField: 'pluginName',
            valueField: 'id',
            queryMode: 'remote',
            mode : 'remote',
            autoLoadOnValue : true,
            queryParam:'schoolName',
            name:'pluginIds',
            store: Ext.create('Ext.data.Store',{
                fields: ["id",'pluginName'],
                proxy: {
                    type: 'ajax',
                    url:'/plugin/list-all',
                    reader: {
                        type: 'json'
                    }
                }/*,
                autoLoad:true*/
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