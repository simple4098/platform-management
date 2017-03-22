Ext.define('Admin.view.page.Error404', {
    extend: 'Admin.view.page.ErrorBase',
    xtype: 'page404',
    items: [
        {
            xtype: 'container',
            width: 400,
            cls:'error-page-inner-container',
            layout: {
                type: 'vbox',
                align: 'center',
                pack: 'center'
            },
            items: [
                {
                    xtype: 'label',
                    cls: 'error-page-top-text',
                    text: '404'
                },
                {
                    xtype: 'label',
                    cls: 'error-page-desc',
                    html: '<div>亲,您访问的资源不存在 !</div><div>请尝试 <a href="#dashboard"> 返回 </a></div>'
                },
                {
                    xtype: 'tbspacer',
                    flex: 1
                }
            ]
        }
    ]
});
