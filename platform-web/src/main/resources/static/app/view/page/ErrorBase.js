Ext.define('Admin.view.page.ErrorBase', {
    extend: 'Ext.window.Window',
    header: false,
    controller: 'authentication',
    autoShow: true,
    cls: 'error-page-container',
    closable: false,
    title: 'ERROR',
    titleAlign: 'center',
    maximized: true,
    modal: true,
	border:false,
    layout: {
        type: 'vbox',
        align: 'center',
        pack: 'center'
    }
});
