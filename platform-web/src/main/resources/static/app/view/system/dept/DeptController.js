Ext.define('Admin.view.system.dept.DeptController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.dept',
    //选择记录
    onSelectionChange : function(grid, selection){
    	
    	var viewModel = this.getView().getViewModel();
    	var records = grid.getSelection();
    	
    	if(records.length >=1){
    		viewModel.set('batchRemoveAction',false);
    		viewModel.set('batchRemoveText',"批量删除("+records.length+")");
    	}else{
    		viewModel.set('batchRemoveAction',true);
    		viewModel.set('batchRemoveText',"批量删除(0)");
    	}
    },
    //新增
    addAction: function (b) {
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'创建部门',
    		animateTarget: b,
    		width:480,
			height:280,
    		items:{xtype:'dept-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/dept/add',me.getView(),win);
    				}
    			},
    			{
    				text:'重置',
    				ui: 'soft-red',
    				iconCls: 'x-fa 	fa-mail-reply',
    				handler:function(btn){
    					btn.up("window").down("form").reset();
    				}
    			},
    			{
    				text:'取消',
    				ui: 'gray',
    				iconCls: 'x-fa 	fa-ban',
    				handler:function(btn){
    					btn.up("window").close();
    				}
    			}
    		]
    	});
    },
    //编辑行
    editAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	
    	var rec = grid.getStore().getAt(rowIndex);
    	
    	var me = this;
    	
    	var win = Ext.create("Admin.ux.Window",{
    		title:'编辑部门',
    		animateTarget: row,
    		width:480,
			height:280,
    		items:{xtype:'dept-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/dept/edit',me.getView(),win);
    				}
    			},
    			{
    				text:'重置',
    				ui: 'soft-red',
    				iconCls: 'x-fa 	fa-mail-reply',
    				handler:function(btn){
    					var form = btn.up("window").down("form");
    					form.loadRecord(rec);
    				}
    			},
    			{
    				text:'取消',
    				ui: 'gray',
    				iconCls: 'x-fa 	fa-ban',
    				handler:function(btn){
    					btn.up("window").close();
    				}
    			}
    		],
    		
    		listeners:{
    			show:function(w,opts){
    				var form = this.down('form');
    				form.loadRecord(rec);
    			}
    		}
    	});
    	
    },
    //删除行
    removeAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	var rec = grid.getStore().getAt(rowIndex);
		var _id = rec.data.id;
		Ext.create('Admin.ux.Action').remove({id:_id},'/dept/delete',this.getView(),row);
    },
    //批量删除
    batchRemoveAction:function(b){
    	var grid = this.getView();
    	var data = grid.getSelectionModel().getSelection();
		var arr = [];
		Ext.each(data,function(obj,index,countriesItSelf){
			Ext.Array.include(arr,obj.get('id'));
		});
		Ext.create('Admin.ux.Action').remove({ids:arr},'/dept/deleteBatch',grid,b);
    },
    //导出报表
    exportAction:function(b){
    	Ext.create('Admin.ux.Action').exportAction({},'/dept/export',b);
    }
});
