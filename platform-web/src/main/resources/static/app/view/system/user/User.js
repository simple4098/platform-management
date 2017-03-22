Ext.define('Admin.view.system.user.User', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'user-view',
    title: '用户管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'user-store',
	            autoLoad: true
	   		 }
	    }
    },
    
    controller:'user',
	
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'行号'},
	 	{ xtype:'gridcolumnview', text: '账号', dataIndex: 'user_id'}, 
	 	{ xtype:'gridcolumnview', text: '姓名', dataIndex: 'user_name'}, 
	 	{ xtype:'gridcolumnview', text: '手机号码', dataIndex: 'user_phone'}, 
	 	{  xtype:'gridcolumnview',text: '邮箱', dataIndex: 'user_email'}, 
	 	{ xtype:'gridcolumnview', text: '创建时间', dataIndex: 'create_time'}, 
	 	{ text: '状态', dataIndex: 'row_status', width:60,renderer:function(value){
	 		if(value == 0){
	 			return "<font color='green'><b>启用</b></font>";
	 		}else{
	 			return "<font color='red'><b>禁用</b></font>";
	 		}
	 	}}, 
	 	{ xtype:'gridcolumnview', text: '部门', dataIndex: 'dept_name'}, 
	 	{ xtype:'gridcolumnview', text: '描述', dataIndex: 'user_desc'}, 
	 	{ text: '角色',width:150 ,dataIndex: 'roles',renderer:function(val){
	 		var arr = [];
	 		for(var i=0;i<val.length;i++){
	 			arr.push(val[i].role_name)
	 		}
	 		return arr.join(', ');
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
		                handler:'editAction'
		            },
		            '-',
		             {
		                iconCls: 'icon-repeat',
		                tooltip: '重置密码',
		                handler: 'resetPassAction'
		            },
		            '-',
		            {
		                iconCls: 'array-grid-sell-col',
		                tooltip: '删除',
		                handler: 'removeAction'
		            }
			]
	    }
	    ],
	    tbar:[
	    	{
	    		text:'创建用户',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addAction'
	    	},
	    	'->',
	    	{
				xtype : 'keysearchfield'
			}
	    ]
});
