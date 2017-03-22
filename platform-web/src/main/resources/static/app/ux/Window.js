Ext.define('Admin.ux.Window',{
    extend:'Ext.window.Window',
    alias : 'xwindow',
    frame:false,
    modal:true,
    autoShow:true,
    border:false,
    layout:'fit',
    maximizable :true,
    resizable:true,
    buttonAlign:'center',
  //  maximizable:true
   // animCollapse:true,
    /*bbar:[
    	'公司主页:<a target="_blank" href="http://www.zqgame.com.cn/index.shtml">http://www.zqgame.com.cn/index.shtml</a>'
    ]*/
    
    initComponent: function() {
        this.callParent();
    }
});