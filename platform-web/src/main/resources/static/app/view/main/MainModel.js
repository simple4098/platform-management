Ext.define('Admin.view.main.MainModel', {
    extend: 'Ext.app.ViewModel',
    alias: 'viewmodel.main',

    data: {
        currentView: null,
        appName:Ext.appName,
        titleHtml:'',
        userName:'未登录',
        userDesc:'工作要肯拼,生活要欢乐。',
        now:Ext.Date.format(new Date(),'Y-m-d H:i A'),
        message:{
        	text:'',
        	textTip:'消息'
        }
    }
});
