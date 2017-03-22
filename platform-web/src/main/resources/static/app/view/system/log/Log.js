Ext.define('Admin.view.system.log.Log', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'log-view',
    title: '系统日志',
    
    selModel: false,
    viewModel: {
       stores: {
	        data: {
	            type: 'log-store',
	            autoLoad: true
	   		 }
	    }
    },
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'行号'},
	 	{ xtype:'gridcolumnview', text: '用户', dataIndex: 'user_name'}, 
	 	{ xtype:'gridcolumnview', text: '创建时间', dataIndex: 'create_time',width:150},
	 	{ xtype:'gridcolumnview', text: '操作名称', dataIndex: 'action_text',width:170},
	 	{ text: '用户操作', dataIndex: 'log_url',flex:1,	renderer :function (value, meta, record) {
	           meta.tdAttr = 'data-qtip=" 完整参数：' + Ext.String.htmlEncode(record.get('log_params')) + '"';
	           return record.get('method')  +" | " + value + " | 参数 :" + (record.get('log_params')+"").substring(0,120)+"..." ;
	        }
	    }
    ],
	plugins: [{
        ptype: 'rowexpander',
        rowBodyTpl : new Ext.XTemplate('<p>{log_params:this.formatData}</p>',{
        	
        	formatData: function(v){
                return "完整参数:"+Ext.String.htmlEncode(v);
            }
        })
    }],
    tbar:[
    	{
			xtype : 'keysearchfield'
		}
    ]
});
