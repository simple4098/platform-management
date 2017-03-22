
function refreshCaptcha(){
	Ext.getCmp('captchaId').setSrc('/captcha?date='+new Date().getTime());
}

function forgotPassword(){
	Ext.toast({
		     html: "请联系超级管理员!",
		     title: '消息',
		     width: 300,
		     align: 't'
		 });
}

Ext.define('Admin.view.authentication.Login', {
    extend: 'Admin.view.authentication.LockingWindow',
    xtype: 'login',
    defaultFocus: 'authdialog', // Focus the Auth Form to force field focus as well
    items: [
        {
            xtype: 'authdialog',
            defaultButton : 'loginButton',
            autoComplete: true,
            bodyPadding: '20 20',
            cls: 'auth-dialog-login',
            header: false,
            width: 515,
            layout: {
                type: 'vbox',
                align: 'stretch'
            },

            defaults : {
                margin : '5 0'
            },

            items: [
            	{
                    xtype: 'box',
                    html: '<div style="font-size:18px;">'+Ext.appName+'</div>',
                    margin: '10 0'
                },
                {
                    xtype: 'textfield',
                    cls: 'auth-textbox',
                    name: 'userid',
                    bind: '{userid}',
                    height: 55,
                    hideLabel: true,
                    allowBlank : false,
                    emptyText: '用户名',
                    triggers: {
                        glyphed: {
                            cls: 'trigger-glyph-noop auth-email-trigger'
                        }
                    }
                },
                {
                    xtype: 'textfield',
                    cls: 'auth-textbox',
                    height: 55,
                    hideLabel: true,
                    emptyText: '密码',
                    inputType: 'password',
                    name: 'password',
                    bind: '{password}',
                    allowBlank : false,
                    triggers: {
                        glyphed: {
                            cls: 'trigger-glyph-noop auth-password-trigger'
                        }
                    }
                },
                {
                    xtype: 'container',
                    layout: 'hbox',
                    items: [
                        {
                            xtype: 'textfield',
                            flex : 1,
                            cls: 'form-panel-font-color rememberMeCheckbox',
                            height: 55,
                            name:'captcha',
                            allowBlank : false,
                            emptyText: '验证码'
                        },
                        {
                            xtype: 'image',
                            padding:'0 0 0 5',
                            id:'captchaId',
                            src: '/captcha',
    						height: 50,
    						width:150
                        }
                    ]
                },
                 {
                    xtype: 'container',
                    bind:{
                    	html: '<a href="javascript:;" class="link-forgot-password" style="color:red;">{error}</a>'
                    }
                },
                {
                    xtype: 'container',
                    layout: 'hbox',
                    items: [
                        {
                            xtype: 'box',
                            flex:1,
                            html: '<a href="javascript:forgotPassword();" class="link-forgot-password"> 我忘记密码了 ?</a>'
                        },
                        {
                            xtype: 'box',
                            html: '<a href="javascript:refreshCaptcha();" class="link-forgot-password"> 更换验证码 </a>'
                        }
                    ]
                },
                {
                    xtype: 'button',
                    reference: 'loginButton',
                    scale: 'large',
                    ui: 'soft-green',
                    iconAlign: 'right',
                    iconCls: 'x-fa fa-angle-right',
                    text: '登录系统',
                    formBind: true,
                    listeners: {
                        click: 'onLoginButton'
                    }
                },
                {
                    xtype: 'box',
                    html: '<div style="color:#444;">Copyright © 厦门麦卓科技有限公司</div>',
                    margin: '10 0'
                }
            ]
        }
    ],

    initComponent: function() {
        this.addCls('user-login-register-container');
        this.callParent(arguments);
    }
});
