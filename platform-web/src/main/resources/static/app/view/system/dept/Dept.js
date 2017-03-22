Ext.define('Admin.view.system.dept.Dept', {
	extend: 'Admin.ux.PageGrid',
    xtype: 'dept-view',
    title: '部门管理',
    viewModel: {
       stores: {
	        data: {
	            type: 'dept-store',
	            autoLoad: true
	   		 }
	    },
	    data:{
	    	batchRemoveAction : true,
	    	batchRemoveText:'批量删除(0)'
	    }
    },
    controller:'dept',
	listeners: {
        selectionchange: 'onSelectionChange'
    },
 	columns: [
	 	{ xtype: 'rownumberer',width:80,text:'行号'},
	 	{ xtype:'gridcolumnview', text: '部门名称', dataIndex: 'dept_name'}, 
	 	{ xtype:'gridcolumnview',text: '职能描述', dataIndex: 'dept_desc'}, 
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
		                iconCls: 'array-grid-sell-col',
		                tooltip: '删除',
		                handler: 'removeAction'
		            }
			]
	    }
	    ],
	    tbar:[
	    	{
	    		text:'创建部门',
	    		iconCls: 'x-fa fa-plus',
		    	handler:'addAction'
	    	},
	    	{
	    		iconCls: 'x-fa fa-minus',
		    	handler:'batchRemoveAction',
		    	bind:{
	    			disabled :'{batchRemoveAction}',
	    			text:'{batchRemoveText}'
	    		}
	    	},
	    	{
	    		text:'导出报表',
	    		iconCls: 'x-fa fa-file-excel-o',
		    	handler:'exportAction'
	    	},
	    	'->',
	    	{
				xtype : 'keysearchfield'
			}
	    ]
});
