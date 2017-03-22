Ext.define('Admin.view.dashboard.Dashboard', {
    extend: 'Ext.container.Container',
    xtype: 'dashboard',
    layout: 'fit',
    requires: [
        'Ext.ux.layout.ResponsiveColumn',
        'Admin.ux.form.KindEditor'
    ],
    layout: 'responsivecolumn',
    title:'主页',
    items:[
        {
            xtype: 'me-view',
            border:false,
            userCls: 'big-100 small-100'
        },
        {
		  	xtype:'line-view',
		    userCls: 'big-100 small-100',
		    height:400
        }
    ]
});
