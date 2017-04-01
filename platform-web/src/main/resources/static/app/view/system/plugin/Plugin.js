Ext.define('Admin.view.system.plugin.Plugin', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'ext-plugin',
    title: '插件管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'plugin-store',
	            autoLoad: true
	   		 }
	    }
    },
    controller:'plugin',
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'序号'},
	 	{ xtype:'gridcolumnview', text: '插件名称', dataIndex: 'pluginName'},
	 	{ xtype:'gridcolumnview', text: '插件URL', dataIndex: 'pluginUrl'},
	 	{ text: '失效时间', dataIndex: 'failueTime',width:80, renderer:function (value) {
            return Ext.util.Format.date(value, "Y-m-d")
        }},
	 /*	{  xtype:'gridcolumnview',text: '插件类型', dataIndex: 'pluginTypeValue'},*/
	 	{  xtype:'gridcolumnview',text: '插件类型', dataIndex: 'pluginTypeName'},
	 	{ text: '创建时间', dataIndex: 'createdTime', width:80,renderer:function(value){
            return Ext.util.Format.date(value, "Y-m-d H:i:s")

        }},
	 	{ xtype:'gridcolumnview', text: '插件版本号', dataIndex: 'versionNum'},
        { text: '状态', dataIndex: 'status', width:60,renderer:function(value){
            if(value == 1){
                return "<font color='green'><b>启用</b></font>";
            }else{
                return "<font color='red'><b>禁用</b></font>";
            }
        }},
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
		                handler:'editPluginAction'
		            }
			]
	    }
	    ],
	    tbar:[
	    	{
	    		text:'新增插件',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addPluginAction'
	    	},
	    	'->',
	    	{
				xtype : 'plugin-key-search-field'
			}
	    ]
});
