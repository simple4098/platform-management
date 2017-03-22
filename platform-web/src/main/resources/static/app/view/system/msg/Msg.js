Ext.define('Admin.view.system.msg.Msg', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'msg-view',
    title: '系统消息',
    viewModel: {
       stores: { 
	        data: {
	            type: 'msg-store',
	            autoLoad: true
	   		 }
	    }
    },
    
    controller:'msg',
	columnLines : false,
	selModel: false,
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'行号'},
	 	{ text: '消息', dataIndex: 'msg_title',flex:2,renderer:function(value, meta, record){
	 		if(value){
           	  meta.tdAttr = 'data-qtip="' + Ext.String.htmlEncode(record.get('msg_content')) + '"';
    		}
	 		 return value;
	 	}}, 
	 	{ xtype:'gridcolumnview', text: '创建时间', dataIndex: 'create_time'}, 
	 	{ xtype:'gridcolumnview', text: '处理时间', dataIndex: 'action_time'}, 
	 	{ text: '状态', dataIndex: 'status',renderer:function(v){
	 		if(v=='0'){
	 			return "<font color='#CC9900' data-qtip='待处理'>待处理</font>";
	 		}else{
	 			return  "<center><font color='#339933'  data-qtip='已完成'><b><i class='x-fa fa-check-square'></i></b></font></center>";
	 		}
	 		
	 	}}, 
	 	{ text: '级别', dataIndex: 'level',renderer:function(v){
	 		if(v=='0'){
	 			return "<font color='#999999'  data-qtip='普通'>普通</font>";
	 		}else{
	 			return  "<font color='#FF6600'  data-qtip='警告'><b>警告</b></font>";
	 		}
	 	}}, 
	    {
	        menuDisabled: true,
	        sortable: false,
	        xtype: 'actioncolumn',
	        width: 100,
	        text:'操作',
	        items: [
		            '-',
		            {
		                iconCls: 'icon-check',
		                tooltip: '确认消息',
		                handler: 'confirmAction'
		            }
			]
	    }
	],
	
	plugins: [{
        ptype: 'rowexpander',
        rowBodyTpl : new Ext.XTemplate('<p>{msg_content}</p>',{})
    }],
    tbar:[
    	{
			xtype : 'keysearchfield'
		}
	]
});
