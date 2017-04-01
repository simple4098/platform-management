Ext.define('Admin.view.main.Main', {
    extend: 'Ext.container.Viewport',
	id:'mainId',
    requires: [
        'Ext.button.Segmented',
        'Ext.list.Tree'
    ],

    controller: 'main',
    viewModel: 'main',

    cls: 'sencha-dash-viewport',
    itemId: 'mainView',

    layout: {
        type: 'vbox',
        align: 'stretch'
    },

    listeners: {
        render: 'onMainViewRender'
    },

    items: [
        {
            xtype: 'toolbar',
            cls: 'sencha-dash-dash-headerbar shadow',
            height: 64,
            itemId: 'headerBar',
            items: [
                {
                    xtype: 'component',
                    reference: 'senchaLogo',
                    cls: 'sencha-logo sencha-tool-bar',
                    bind:{
                    	html: '<div class="main-logo"><img src="resources/images/company-logo.png" width="17">{appName}</div>'
                    },
                    width: 250
                },
                {
                    margin: '0 0 0 8',
                    ui: 'header',
                    iconCls:'x-fa fa-navicon',
                    id: 'main-navigation-btn',
                    handler: 'onToggleNavigationSize'
                },
                {
                	xtype:'component',
                	bind:{
                		html: '{titleHtml}'
                	}
                },
                '->',
                {
                    xtype: 'tbtext',
                    bind:{
                    	text: '{now}'
                    }
                },
				/*{
                    iconCls:'x-fa fa-envelope',
                    ui: 'header',
                    href: '#msg-view',
                    hrefTarget: '_self',
                    bind:{
                    	 text:'<font color=red><b>{message.text}</b></font>',
                    	 tooltip: "{message.textTip}"
                    }
                },
                '-',*/
                /*{
                    iconCls:'x-fa fa-question',
                    ui: 'header',
                    href: '#faq',
                    hrefTarget: '_self',
                    tooltip: '帮助中心'
                },*/
                {
                    iconCls:'x-fa fa-lock',
                    ui: 'header',
                    tooltip: '修改密码',
                    handler:'onUpdatePasswd'
                },
                 {
                    iconCls:'x-fa fa-sign-out',
                    ui: 'header',
                   // href: 'logout',
                   // hrefTarget: '_self',
                    tooltip: '退出系统',
                    handler:function(b){
						Ext.Msg.show({
						    title: '警告',
						    msg: '<font color=red>尊敬的用户，您确定要退出系统吗?</font>',
						    width: 300,
						    buttons: Ext.Msg.OKCANCEL,
						    animateTarget:b ,
						    icon: Ext.MessageBox.INFO,
						    fn: function(btn){
					    	   if (btn == 'ok') {
					    	   		window.location.href = "logout";
								}
						    }
						});
                    }
                },
                {
                    xtype: 'button',
                    tooltip: '关于我',
                    border:false,
                    style:{
                    	backgroundColor:'#FFFFFF'
                    },
                    cls: 'top-user-name',
                    bind:{
                    	text: '{userName}'
                    },
                     handler: 'aboutMeAction'
                },
                {
                    xtype: 'image',
                    cls: 'header-right-profile-image',
                    height: 35,
                    width: 35,
                    alt:'current user image',
                    src: '/resources/images/f.png',
                    hidden:true
                }
            ]
        },
        {
            xtype: 'maincontainerwrap',
            id: 'main-view-detail-wrap',
            reference: 'mainContainerWrap',
            flex: 1,
            items: [
                {
                    xtype: 'treelist',
                    reference: 'navigationTreeList',
                    itemId: 'navigationTreeList',
                    id: 'navigationTreeListId',
                    ui: 'navigation',
                    store: 'NavigationTree',
                    width: 250,
                    singleExpand :true,
                    expanderFirst: false,
                    expanderOnly: false,
                    listeners: {
                        selectionchange: 'onNavigationTreeSelectionChange'
                    }
                },
                {
                    xtype: 'container',
                    flex: 1,
                    reference: 'mainCardPanel',
                    cls: 'sencha-dash-right-main-container',
                    itemId: 'contentPanel',
                    layout: {
                        type: 'card',
                        anchor: '100%'
                    }
                }
            ]
        }
    ]
});
