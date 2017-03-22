Ext.define('Admin.view.widgets.Me', {
    extend: 'Ext.panel.Panel',
    xtype: 'me-view',
	border:false,
    cls:'admin-widget shadow',
	id:'meId',
    viewModel: {
	    data:{
	    	user : {user_id:'张三',user_desc:'工作要肯拼,生活要欢乐。'},
	    	tjdata:{days:'12',days7:'1854',hists:'5241'}
	    }
    },
    items: [
        {
            xtype: 'image',
            cls: 'widget-top-container-first-img',
            height: 66,
            width: 66,
            alt: 'profile-image',
            src: 'resources/images/user-profile/m.png'
        },
        {
            xtype: 'component',
            cls: 'widget-top-first-third-container postion-class',
            height: 135
        },
        {
            xtype: 'container',
            cls: 'widget-bottom-first-container postion-class',
            height: 165,
            padding: '30 0 0 0',
            layout: {
                type: 'vbox',
                align: 'center',
                pack: 'center'
            },
            items: [
                {
                    xtype: 'label',
                    cls: 'widget-name-text',
                    bind:{
                    	html: '{user.user_id}'
                    }
                },
                {
                    xtype: 'label',
                    margin:10,
                    bind:{
                    	html: '{user.user_desc}'
                    }
                },
                {
                    xtype: 'toolbar',
                    flex: 1,
                    cls: 'widget-follower-toolbar',
                    width: '100%',
                    margin: '20 0 0 0',
                    defaults: {
                        xtype: 'displayfield',
                        flex: 1,
                        labelAlign: 'top'
                    },
                    items: [
                        {
                        	bind:{
                           		 value: '<div class="label">今日/PV</div><div><b>{tjdata.days}</b></div>'
                        	}
                        },
                        {
                            cls: 'widget-follower-tool-label',
                            padding:5,
                            bind:{
                           		 value: '<div class="label">昨日/PV</div><div><b>{tjdata.days7}</b></div>'
                        	}
                            
                        },
                        {
                             bind:{
                           		 value: '<div class="label">历史/PV</div><div><b>{tjdata.hists}</b></div>'
                        	}
                        }
                    ]
                }
            ]
        }
    ],
    listeners:{
    	render:function(){
    		var me = this;
    		Ext.Ajax.request({
	    	     url: '/getUser',
	    	     success: function(response, opts) {
	    	    	 var obj = Ext.decode(response.responseText);
	    	    	 if(obj.success){
	    	    		me.getViewModel().set('user',obj.ext);
	    	    	 }
	    	     },
	    	     failure: function(response, opts) {
	    	    	alert('加载失败!');
	    	     }
	    	});
    	}
    }
});
