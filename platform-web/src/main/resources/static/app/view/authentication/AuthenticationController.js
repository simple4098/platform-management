Ext.define('Admin.view.authentication.AuthenticationController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.authentication',

    //TODO: implement central Facebook OATH handling here

    onFaceBookLogin : function() {
        this.redirectTo('dashboard', true);
    },
    /**
     * 登录
     */
    onLoginButton: function(b,opts) {
    	
    	var me = this;
    	var form = b.up("form").getForm();
    	var viewModel = me.getViewModel();
    	form.submit({
			waitMsg:'登录中...',
			clientValidation: true,
			url:'/doLogin',
			params:form.getFieldValues(),
			success:function(form,action){
				me.redirectTo('dashboard', true);
				//加载菜单
				var treeStore = Ext.getCmp('navigationTreeListId').getStore();
				if(treeStore && treeStore.getCount()==0){
					treeStore.reload();
					me.loadMeInfo();
				}
			},
			failure:function(form,action){
				switch (action.failureType) {
					case Ext.form.action.Action.CLIENT_INVALID:
						Ext.create('Admin.ux.Action').error('客户端验证不通过');
						break;
					default:
						viewModel.set("error",action.result.msg+"!");
				 }
			   }	
			});
    },

    onLoginAsButton: function() {
        this.redirectTo('login', true);
    },

    onNewAccount:  function() {
        this.redirectTo('register', true);
    },

    onSignupClick:  function() {
        this.redirectTo('dashboard', true);
    },

    onResetClick:  function() {
        this.redirectTo('dashboard', true);
    },
    /**
     * 加载消息
     */
    loadMeInfo : function(){
		Ext.Ajax.request({
		     url: '/msg/getmemsg',
		     success: function(response, opts) {
		    	 var obj = Ext.decode(response.responseText);
		    	 
		    	 if(obj.warn > 0){
		    		Ext.toast({
					     html: "<font color='#CC9900'>"+'您有'+obj.all+"条消息等待处理!</font><br /><font color='#FF3300'>其中警告消息"+obj.warn+"条"+"!</font>",
					     title: '消息提醒',
					     width: 400,
					     align: 't'
					 });
					 
					 var view = Ext.getCmp('mainId');
		    		 var viewModel = view.getViewModel();
		    		 viewModel.set("message",{text:obj.warn,textTip:'您有'+obj.warn+'条消息处理'});
					 
		    	 }else if(obj.all > 0){
		    		Ext.toast({
					     html: "<font color='#CC9900'>"+'您有'+obj.all+"条消息等待处理!</font>",
					     title: '消息提醒',
					     width: 400,
					     align: 't'
					 });
		    	}
		     },
		     failure: function(response, opts) {
		    	
		     }
		});
	}
});