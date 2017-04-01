Ext.define('Admin.view.system.pluginAuth.PluginAuthController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.pluginAuth',
    //新增
    addPluginAuthAction: function (b) {
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'插件授权',
    		width:710,
			height:425,
    		animateTarget: b,
    		items:{xtype:'plugin-auth-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/plugin-auth/add',me.getView(),win);
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
    editPluginAuthAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	var rec = grid.getStore().getAt(rowIndex);
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'编辑插件授权',
    		width:710,
			height:425,
    		animateTarget: row,
    		items:{xtype:'plugin-auth-display-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/plugin-auth/edit',me.getView(),win);
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
                    var pluginIds = form.down('tagfield[id=pluginIds]');
                    pluginIds.getStore().reload();
                    /*form.getForm().load({
                        url: '/plugin-auth/get',
                        waitMsg: '加载中...',
                        params: {
                            id: rec.get('id')
                        }
                    })*/
    			}
    		}
    	});
    }
});
