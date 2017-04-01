Ext.define('Admin.view.main.MainController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.main',

    listen : {
        controller : {
            '#' : {
                unmatchedroute : 'onRouteChange'
            }
        }
    },

    routes: {
        ':node': 'onRouteChange'
    },

    lastView: null,

    setCurrentView: function(hashTag) {
    	
    	hashTag = (hashTag || '').toLowerCase();

        var me = this,
            refs = me.getReferences(),
            mainCard = refs.mainCardPanel,
            mainLayout = mainCard.getLayout(),
            navigationList = refs.navigationTreeList,
            store = navigationList.getStore(),
           
            node = store.findNode('routeId', hashTag) ||
                   store.findNode('viewType', hashTag),
                   
           // view = (node && node.get('viewType')) || 'page404',
           
            view = hashTag ,
            
            lastView = me.lastView,
            
            existingItem = mainCard.child('component[routeId=' + hashTag + ']'),
            
            newView;
            
	    if(!me.hasViewtype(view)){
	    	view = 'page404';
	    }
          
        /**登录面板**/
            
        if(hashTag == 'login'){
        	view = 'login';
        }
		
        if(hashTag=='passwordreset'){
        	view = 'passwordreset';
        }
        
        // Kill any previously routed window
        if (lastView && lastView.isWindow) {
            lastView.destroy();
        }

        lastView = mainLayout.getActiveItem();
		
        
        if (!existingItem) {
            newView = Ext.create({
                xtype: view,
                routeId: hashTag,  // for existingItem search later
                hideMode: 'offsets'
            });
        }

        if (!newView || !newView.isWindow) {
            // !newView means we have an existing view, but if the newView isWindow
            // we don't add it to the card layout.
            if (existingItem) {
                // We don't have a newView, so activate the existing view.
                if (existingItem !== lastView) {
                    mainLayout.setActiveItem(existingItem);
                }
                newView = existingItem;
            }
            else {
                // newView is set (did not exist already), so add it and make it the
                // activeItem.
                Ext.suspendLayouts();
                mainLayout.setActiveItem(mainCard.add(newView));
                Ext.resumeLayouts(true);
            }
        }

        navigationList.setSelection(node);

        if (newView.isFocusable(true)) {
            newView.focus();
        }

        me.lastView = newView;
    },
    onNavigationTreeSelectionChange: function (tree, node) {
        
       
    	var to = node && (node.get('routeId') || node.get('viewType'));
        
    	if(!this.isLogin()){
    		this.redirectTo("login");
    		return;
    	}
    	
    	if (to) {
            this.redirectTo(to);
        }
        
    },
    onToggleNavigationSize: function () {
        var me = this,
            refs = me.getReferences(),
            navigationList = refs.navigationTreeList,
            wrapContainer = refs.mainContainerWrap,
            collapsing = !navigationList.getMicro(),
            new_width = collapsing ? 64 : 250;
            
        if (Ext.isIE9m || !Ext.os.is.Desktop) {
            Ext.suspendLayouts();

            refs.senchaLogo.setWidth(new_width);

            navigationList.setWidth(new_width);
            navigationList.setMicro(collapsing);

            Ext.resumeLayouts(); // do not flush the layout here...

            // No animation for IE9 or lower...
            wrapContainer.layout.animatePolicy = wrapContainer.layout.animate = null;
            wrapContainer.updateLayout();  // ... since this will flush them
        }
        else {
        	
            if (!collapsing) {
                // If we are leaving micro mode (expanding), we do that first so that the
                // text of the items in the navlist will be revealed by the animation.
                navigationList.setMicro(false);
            }

            // Start this layout first since it does not require a layout
            refs.senchaLogo.animate({dynamic: true, to: {width: new_width}});

            // Directly adjust the width config and then run the main wrap container layout
            // as the root layout (it and its chidren). This will cause the adjusted size to
            // be flushed to the element and animate to that new size.
            navigationList.width = new_width;
            wrapContainer.updateLayout({isRoot: true});
            navigationList.el.addCls('nav-tree-animating');

            // We need to switch to micro mode on the navlist *after* the animation (this
            // allows the "sweep" to leave the item text in place until it is no longer
            // visible.
            if (collapsing) {
                navigationList.on({
                    afterlayoutanimation: function () {
                        navigationList.setMicro(true);
                        navigationList.el.removeCls('nav-tree-animating');
                    },
                    single: true
                });
            }
        }
    },

    onMainViewRender:function(view,opts) {

    	var viewModel = view.getViewModel();
    	
    	//加载菜单
    	var treeView = Ext.getCmp('navigationTreeListId');
    	var store = treeView.getStore();
    	var myMask = new Ext.LoadMask({
		    msg    : '权限加载中...',
		    target : view
		});
		myMask.show();
    	store.on('load',function(st, records, successful, operation, node, eOpts){
			if(successful){
				//获取用户名
		    	Ext.Ajax.request({
		    	     url: '/getUser',
		    	     success: function(response, opts) {
		    	    	 var obj = Ext.decode(response.responseText);
		    	    	 if(obj.success){
		    	    	 	 var user = obj.ext;
		    	    		 viewModel.set('userName',user.userName);
		    	    		 myMask.hide();
		    	    	 }
		    	     },
		    	     failure: function(response, opts) {
		    	     	
		    	     }
		    	});
			}
		});
    	store.load();
    	if(!this.isLogin()){
    		this.redirectTo("login");
    		return;
    	}
    	var tag = window.location.hash;
    	if(tag){
    		tag = tag.substring(1);
    		this.setCurrentView(tag);
    	}
    },

    onRouteChange:function(id){
       this.setCurrentView(id);
    },
    
    /**
     * 是否登录
     */
    isLogin : function(){
    	var flag = false;
    	Ext.Ajax.request({
    	     url: '/isLogin',
    	     async:false,
    	     success: function(response, opts) {
    	    	 var obj = Ext.decode(response.responseText);
    	    	 if(obj.success){
    	    		 flag = true;
    	    	 }
    	     },
    	     failure: function(response, opts) {
    	    	 flag = false;
    	     }
    	});
		return flag;
    },
    /**
     * 是否登录
     */
    hasViewtype: function(_view){
    	var flag = false;
    	Ext.Ajax.request({
    	     url: '/menu/hasViewType',
    	     async:false,
    	     params :{view:_view},
    	     success: function(response, opts) {
    	    	 var obj = Ext.decode(response.responseText);
    	    	 if(obj.success){
    	    		 flag = true;
    	    	 }
    	     },
    	     failure: function(response, opts) {
    	    	 flag = false;
    	     }
    	});
		return flag;
    },
    //修改密码
    onUpdatePasswd : function(b){
    
    	var me = this;
    	var win = Ext.create("Admin.ux.Window",{
    		title:'修改密码',
    		animateTarget: b,
    		items:{xtype:'passwd-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/user/updatepwd',null,win);
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
   
    /**
     * 关于我
     * @param {} b
     */
    aboutMeAction:function(b){
    
    	var me = this;
    	
    	var win = Ext.create("Admin.ux.Window",{
    		title:'关于我',
    		width:710,
			height:480,
    		animateTarget: b,
    		items:{xtype:'user-display-form'},
    		buttons:[	
    			{
    				text:'保存',
    				ui: 'soft-green',
    				iconCls: 'x-fa 	fa-floppy-o',
    				handler:function(btn){
    					var form = btn.up("window").down("form").getForm();
						Ext.create('Admin.ux.Action').submit(form,'/user/edit',null,win);
    				}
    			},
    			{
    				text:'关闭',
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
                       url: '/user/getMe',
                       waitMsg:'加载中...',
                       params: {},
                     /* success:function(){
                    	    form.down('textfield[name=userId]').setReadOnly(true);
                       },*/
                      failure: function(form, action) {
                           if(action.result.message!=undefined){
								Ext.Msg.alert("提示", "<font color=red>"+action.result.message+"!</font>");
							}else{
                           		Ext.Msg.alert("提示", "<font color=red>加载出错,请刷新页面重试!</font>");
							}
                       }
                    });
    			}
    		}
    	});
    }
});
