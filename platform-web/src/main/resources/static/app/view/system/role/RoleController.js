Ext.define('Admin.view.system.role.RoleController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.role',
    
    
 	//选择记录
    onSelectionChange : function(grid, selection){
    	// var status = this.lookupReference('status');
    	var viewModel = this.getView().getViewModel();
    	var records = grid.getSelection();
    	if(records.length==1){
    		viewModel.set('giveAuthBtnStatus',false);
    	}else{
    		viewModel.set('giveAuthBtnStatus',true);
    	}
    },
    //分配权限
    giveAuthAction :function(btn){
    	var me = this;
    	var _roleId = me.getView().getSelection()[0].get('id');
    	var win = Ext.create("Admin.ux.Window",{
    		title:'分配权限',
    		width:800,
    		height:600,
    		animateTarget: btn,
    		items:{xtype:'give-auth'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var treeView = win.down('treepanel');
    					var records = treeView.getChecked();
				        
				        var _menuIds = [];
				        Ext.Array.each(records, function(rec){
				            _menuIds.push(rec.get('id'));
				        });
                    	
				        Ext.create('Admin.ux.Action').doAction({
				        	msg:'确认保存权限?',
				        	url:'/role/doAuth',
				        	params:{
				        		roleId:_roleId,
				        		menuIds:_menuIds
				        	},
				        	win:btn.up('window')
				        });
    				}
    			},
    			{
    				text:'重置',
    				ui: 'soft-red',
    				iconCls: 'x-fa 	fa-mail-reply',
    				handler:function(btn){
    					 btn.up("window").down('treepanel').getStore().reload();
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
    			afterrender:function(){
    				me.loadAuth( this.down('treepanel'),_roleId);
    			}
    		}
    	});
    },
    
    loadAuth : function(authView,_roleId){
    	var treeView =authView;
		var viewMode  = treeView.getViewModel( );
		var store = viewMode.getStore('authStores');
		
		var myMask = new Ext.LoadMask({
		    msg    : '权限加载中...',
		    target : treeView
		});
		myMask.show();
		
		Ext.apply(store.proxy.extraParams,{roleId :_roleId});
	   
		store.on('load',function(st, records, successful, operation, node, eOpts){
			if(successful){
				myMask.hide();
			}
		});
	   store.load();
    },
    
    //新增
    addAction: function (b) {
     	 //var viewModel = this.getView().getViewModel();
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'新增角色',
    		items:{xtype:'role-form'},
    		animateTarget: b,
    		width:500,
			height:290,
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/role/add',me.getView(),win);
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
    		title:'编辑角色',
    		animateTarget: row,
    		width:500,
			height:290,
    		items:{xtype:'role-form'},
    		//animateTarget : row,
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/role/edit',me.getView(),win);
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
		Ext.create('Admin.ux.Action').remove({id:_id},'/role/delete',this.getView(),row);
    }
});
