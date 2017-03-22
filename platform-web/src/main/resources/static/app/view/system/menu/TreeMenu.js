Ext.define('Admin.view.system.menu.TreeMenu', {
    extend: 'Ext.tree.Panel',

    xtype: 'tree-menu',
    
    reserveScrollbar: true,
	
    title: '菜单和资源',
    
    margin:10,
    
    rootVisible: false,
    
    viewModel: {
        type: 'menu-view-model'
    },
    controller:'menu',
    
    bind: {
        store: '{menus}'
    },
    rowLines:true,
 	lines:true,
 	columnLines : true,
 	forceFit:true,
 	columns: [
 	{
        xtype: 'treecolumn',
        text: '名称',
        dataIndex: 'text',
        width:200
    },
    { xtype:'gridcolumnview',text:'视图', dataIndex: 'view_type'},
    { xtype:'gridcolumnview',text:'创建时间', dataIndex: 'create_time'},
    { xtype:'gridcolumnview',text:'图标', dataIndex: 'icon_cls'},
    { xtype:'gridcolumnview',text:'附加样式', dataIndex: 'row_cls'},
    { xtype:'gridcolumnview',text:'排序', dataIndex: 'sort'},
    { xtype:'gridcolumnview',text:'资源', dataIndex: 'action'},
    {text:'状态', dataIndex: 'status',renderer:function(v){
    	return v==1 ? '<font color=green  data-qtip="启用"><b>启用</b></font>' : '<font color=red data-qtip="禁用"><b>禁用</b></font>'
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
	            "-",
	            {
	               	iconCls: 'array-grid-sell-col',
	                tooltip: '删除',
	                handler: 'removeAction'
	            }
		]
    }],
    tbar:[
    	{
    		text:'新增菜单',
    		iconCls: 'x-fa fa-plus',
	    	handler:'onClickAdd'
    	},
    	{
    		text:'展开所有',
    		iconCls: 'x-fa fa-angle-down',
	    	handler:'expandAction'
    	},
    	{
    		text:'收起所有',
    		iconCls: 'x-fa fa-angle-up',
	    	handler:'closeAction'
    	}
    ]
});
