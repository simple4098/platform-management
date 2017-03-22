Ext.define('Admin.view.main.Passwd', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'passwd-form',
	width:420,
	height:170,
    items: [
        {
            xtype: 'textfield',
            name:'user_pwd',
            fieldLabel: '旧密码',
            inputType: 'password',
            minLength:4,
            maxLength:20
        },
        {
            xtype: 'textfield',
            name:'new_pwd1',
            fieldLabel: '新密码',
            inputType: 'password',
            minLength:4,
            maxLength:20
        },
        {
            xtype: 'textfield',
            name:'new_pwd2',
            fieldLabel: '确认密码',
            inputType: 'password',
            minLength:4,
            maxLength:20
        }
    ]
});
