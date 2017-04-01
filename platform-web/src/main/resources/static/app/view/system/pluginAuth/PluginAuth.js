Ext.define('Admin.view.system.pluginAuth.PluginAuth', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'ext-plugin-auth',
    title: '插件授权管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'plugin-auth-store',
	            autoLoad: true
	   		 }
	    }
    },
    controller:'pluginAuth',
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'序号'},
	 	{ xtype:'gridcolumnview', text: '企业名称', dataIndex: 'businessName'},

	 	{ text: '失效时间', dataIndex: 'failueTime',width:80, renderer:function (value) {
            return Ext.util.Format.date(value, "Y-m-d")
        }},
        { text: '创建时间', dataIndex: 'createdTime', width:90,renderer:function(value){
            return Ext.util.Format.date(value, "Y-m-d H:i:s")

        }},
        { text: '状态', dataIndex: 'status', width:60,renderer:function(value){
            if(value == 1){
                return "<font color='green'><b>启用</b></font>";
            }else{
                return "<font color='red'><b>禁用</b></font>";
            }
        }},
        { text: '插件',width:150 ,dataIndex: 'plugins',renderer:function(val){
            var arr = [];
            for(var i=0;i<val.length;i++){
                arr.push(val[i].pluginName)
            }
            return arr.join(', ');
        }},
       /* { text: '插件名词', dataIndex: 'pluginPluginName' },
        {  text: '插件URL', dataIndex: 'pluginPluginUrl'},
	 	{  xtype:'gridcolumnview',text: '插件类型', dataIndex: 'pluginPluginTypeValue'},
	 	{ xtype:'gridcolumnview', text: '插件版本号', dataIndex: 'pluginVersionNum'},*/

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
		                handler:'editPluginAuthAction'
		            }
			]
	    }
	    ],
	    tbar:[
	    	{
	    		text:'新增插件',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addPluginAuthAction'
	    	}
	    ]
});
