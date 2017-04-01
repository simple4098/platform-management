Ext.define('Admin.view.system.pluginType.PluginType', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'ext-plugin-type',
    title: '插件类型管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'plugin-type-store',
	            autoLoad: true
	   		 }
	    }
    },
    controller:'pluginType',
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'序号'},
	 	{ xtype:'gridcolumnview', text: '插件类型名称', dataIndex: 'pluginTypeName'},

	 	{ text: '创建时间', dataIndex: 'createdTime', width:80,renderer:function(value){
            return Ext.util.Format.date(value, "Y-m-d H:i:s")

        }},
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
		                handler:'editPluginTypeAction'
		            },
				   '-',
					{
						iconCls: 'array-grid-sell-col',
						tooltip: '删除',
						handler: 'removePluginTypeAction'
					}
			]
	    }
	    ],
	    tbar:[
	    	{
	    		text:'新增插件',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addPluginTypeAction'
	    	}/*,
	    	'->',
	    	{
				xtype : 'plugin-key-search-field'
			}*/
	    ]
});
