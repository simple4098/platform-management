Ext.define('Admin.view.system.user.UserController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.user',
    //新增
    addAction: function (b) {
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'新增用户',
    		width:710,
			height:550,
    		animateTarget: b,
    		items:{xtype:'user-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/user/add',me.getView(),win);
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
    		title:'编辑用户',
    		width:710,
			height:550,
    		animateTarget: row,
    		items:{xtype:'user-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/user/edit',me.getView(),win);
    				}
    			},
    			{
    				text:'重置',
    				ui: 'soft-red',
    				iconCls: 'x-fa 	fa-mail-reply',
    				handler:function(btn){
    					var form = btn.up("window").down("form");
    						form.getForm().load({
			                       url: '/user/get',
			                       waitMsg:'加载中...',
			                       params: {
			                            id: rec.get('id')
			                       },
			                      success:function(){
			                    	    form.down('textfield[id=user_id]').setReadOnly(true);
			                       },
			                      failure: function(form, action) {
			                      		if(action.result.msg!=undefined){
											Ext.Msg.alert("提示", "<font color=red>"+action.result.msg+"!</font>");
										}else{
			                           		Ext.Msg.alert("提示", "<font color=red>加载出错,请刷新页面重试!</font>");
										}
			                       }
		                    });
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
    				var roleTage = form.down('tagfield[id=role_id]');
    				roleTage.getStore().reload();
    				form.remove( form.down('textfield[id=user_pwd]'));
    				
    				var dept = form.down("combo[id=dept_id]");
    				dept.getStore().reload();
    				
    				form.getForm().load({
                       url: '/user/get',
                       waitMsg:'加载中...',
                       params: {
                            id: rec.get('id')
                       },
                      success:function(){
                    	    form.down('textfield[id=user_id]').setReadOnly(true);
                       },
                      failure: function(form, action) {
                           if(action.result.msg!=undefined){
								Ext.Msg.alert("提示", "<font color=red>"+action.result.msg+"!</font>");
							}else{
                           		Ext.Msg.alert("提示", "<font color=red>加载出错,请刷新页面重试!</font>");
							}
                       }
                    });
    			}
    		}
    	});
    	
    },
    //删除行
    removeAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	var rec = grid.getStore().getAt(rowIndex);
		var _id = rec.data.id;
		Ext.create('Admin.ux.Action').remove({id:_id},'/user/delete',this.getView(),row);
    },
    //重置密码
    resetPassAction:function(grid, rowIndex, colIndex,item,e,record,row){
    
		Ext.create('Admin.ux.form.TextEditable',{
			submitUrl:'/user/resetpwd',
		    //cmpt:grid,
		    submitName:'new_pwd',
		    compTitle:'重置密码',
		    emptyText:'请输入新密码',
		    animateTarget:row,
		    extValue:{id:record.get('id')}
		}).show();
    }
});
