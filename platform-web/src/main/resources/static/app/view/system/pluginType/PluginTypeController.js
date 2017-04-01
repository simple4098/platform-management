Ext.define('Admin.view.system.pluginType.PluginTypeController', {
   
	extend: 'Admin.ux.GridController',
  
    alias: 'controller.pluginType',
    //新增
    addPluginTypeAction: function (b) {
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'新增插件类型',
    		width:710,
			height:425,
    		animateTarget: b,
    		items:{xtype:'plugin-type-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/plugin-type/add',me.getView(),win);
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
    //删除行
    removePluginTypeAction:function(grid, rowIndex, colIndex,item,e,record,row){
        var rec = grid.getStore().getAt(rowIndex);
        var _id = rec.data.id;
        Ext.create('Admin.ux.Action').remove({pluginTypeId:_id},'/plugin-type/delete',this.getView(),row);
    },
    //编辑行
    editPluginTypeAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	var rec = grid.getStore().getAt(rowIndex);
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'编辑插件',
    		width:710,
			height:425,
    		animateTarget: row,
    		items:{xtype:'plugin-type-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/plugin-type/edit',me.getView(),win);
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
    }
});
