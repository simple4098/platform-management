Ext.define('Admin.ux.GridController', {
   
	extend: 'Ext.app.ViewController',
   
	//刷新Grid
    refreshAction : function(){
		this.getView().getStore().reload();
    },
	
    //新增
    onClickAdd: function () {
    	Ext.create('Admin.ux.Action').info("no finish !");
    },
    
    //编辑行
    editAction:function(grid, rowIndex, colIndex){
    	Ext.create('Admin.ux.Action').info("no finish !");
    },
    //删除行
    removeAction:function(grid, rowIndex, colIndex){
    	Ext.create('Admin.ux.Action').info("no finish !");
    }
});
