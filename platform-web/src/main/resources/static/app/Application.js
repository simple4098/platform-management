Ext.define('Admin.Application', {
    extend: 'Ext.app.Application',
    
    name: 'Admin',
	
    defaultToken : 'dashboard',

    mainView: 'Admin.view.main.Main',
    
    onAppUpdate: function () {
        Ext.Msg.confirm('Application Update', 'This application has an update, reload?',
            function (choice) {
                if (choice === 'yes') {
                    window.location.reload();
                }
            }
        );
    },
    
    launch : function(){
    	
    }
});

/**
 * 扩展Ext
 */
Ext.apply(Ext,{
	//应用显示名称
	appName : "麦卓科技管理平台",
	//提示信息
	info: function(msg){
		Ext.toast({
		     html: "<font color='green'>"+msg+"!</font>",
		     title: '消息',
		     width: 300,
		     align: 't'
		 });
	},
	//错误消息
	error: function(msg){
		Ext.toast({
		     html: "<font color='red'>"+msg+"!</font>",
		     title: '错误',
		     width: 300,
		     align: 't'
		 });
	}
});
