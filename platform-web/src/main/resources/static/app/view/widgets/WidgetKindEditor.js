Ext.define('Admin.view.widgets.WidgetKindEditor', {
    extend: 'Admin.view.widgets.AppFormPanel',
    xtype: 'widget-kindeditor',
    title:'KindEditor编辑器',    
    items: [
    
    	  {
		    fieldLabel: 'KindEditor',
		    name: "content",
		    xtype: 'kindeditor',
		    anchor: '-20',
		    height:600,
		    kindeditorConfig: {
		        //编辑器配置项
		    	 uploadJson : '/upload/uploadFile', //上传文件服务器地址
                 fileManagerJson : '/upload/fileManager', //文件管理服务器地址
                 allowFileManager : false
		    }
		}
	]
});
