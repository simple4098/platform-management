Ext.define('Admin.view.system.role.Role', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'role-view',
    title: '角色管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'role-store',
	            autoLoad: true
	   		 }
	    },
	    data:{
	    	giveAuthBtnStatus : true
	    }
    },
    controller:'role',
    
	listeners: {
        selectionchange: 'onSelectionChange'
    },
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'行号'},
	 	{xtype:'gridcolumnview', text: '名称', dataIndex: 'role_name'}, 
	 	{xtype:'gridcolumnview', text: '创建时间', dataIndex: 'create_time'}, 
	 	{ text: '状态', dataIndex: 'row_status', width:60,renderer:function(value){
	 		if(value == 0){
	 			return "<font color='green'><b>启用</b></font>";
	 		}else{
	 			return "<font color='red'><b>禁用</b></font>";
	 		}
	 	}}, 
	 	{ xtype:'gridcolumnview', text: '描述', dataIndex: 'role_desc'}, 
	    {
	        menuDisabled: true,
	        sortable: false,
	        xtype: 'actioncolumn',
	        width: 60,
	        text:'操作',
	        items: [
	        		{
		                iconCls: 'array-grid-buy-col',
		                tooltip: '编辑',
		                handler:'editAction'
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
	    		text:'创建角色',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addAction'
	    	},
	    	{
	    		text:'分配权限',
	    		iconCls: 'x-fa fa-gavel',
	    		bind:{
	    			disabled :'{giveAuthBtnStatus}'
	    		},
		    	handler:'giveAuthAction'
	    	},
	    	'->',
	    	{
				xtype : 'keysearchfield'
			}
	    ]
});
