 Ext.define('Admin.view.system.msg.MsgController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.msg',
    //确认消息
    confirmAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	
    	var rec = grid.getStore().getAt(rowIndex);
		var _id = rec.data.id;
		
		Ext.create('Admin.ux.Action').doAction({
			url:'/msg/confirm',
			params:{id:_id},
			grid:grid,
			msg:'确认处理消息?'
		});
    }
});
