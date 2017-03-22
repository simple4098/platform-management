Ext.define('Admin.view.system.menu.MenuController', {
   
	extend: 'Ext.app.ViewController',
  
    alias: 'controller.menu',
    
    
    /**
     * 新增
     */
    onClickAdd: function (b) {
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'新增菜单/资源',
    		width:800,
			height:470,
    		animateTarget: b,
    		items:{xtype:'menu-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
						var form = btn.up("window").down("form");
						var cts = form.down('simple-combobox-tree');
						form.down('hidden[id=pid]').setValue(cts.getHiddenValue());
						Ext.create('Admin.ux.Action').submit(form.getForm(),'/menu/add',me.getView(),win);
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
    //展开
    expandAction : function(){
    	var treeView = this.getView();
    	treeView.expandAll();
    },
     //收起
    closeAction : function(){
    	var treeView = this.getView();
    	treeView.collapseAll();
    },
    /**
     * 编辑行
     */
    editAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	
    	var rec = grid.getStore().getAt(rowIndex);
    	var me = this;
    	
    	var win = Ext.create("Admin.ux.Window",{
    		title:'编辑菜单/资源',
    		width:800,
			height:470,
    		animateTarget: row,
    		items:{xtype:'menu-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
						var form = btn.up("window").down("form");
						var cts = form.down('simple-combobox-tree');
						form.down('hidden[id=pid]').setValue(cts.getHiddenValue());
						Ext.create('Admin.ux.Action').submit(form.getForm(),'/menu/edit',me.getView(),win);						
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
    		],
    		
    		listeners:{
    			show:function(w,opts){
    				var form = this.down('form');
    				var comtree =  form.down('simple-combobox-tree');
    				if(rec.get('pid') == '0'){
    					comtree.setValue('顶级菜单');
    				}else{
    					comtree.setValue(rec.get('ptext'));
    				}
    				form.down('simple-combobox-tree').setHiddenValue(rec.get('pid'));
    				form.loadRecord(rec);
    			}
    		}
    	});
    	
    },
    /**
     * 删除行
     */
    removeAction:function(grid, rowIndex, colIndex,item,e,record,row){
    	var rec = grid.getStore().getAt(rowIndex);
		var _id = rec.data.id;
		Ext.create('Admin.ux.Action').remove({id:_id},'/menu/delete',this.getView(),row);
    }
});
