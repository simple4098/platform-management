Ext.define("Admin.ux.PageGrid",{
	extend: 'Ext.grid.Panel',

    margin:10,
    
    selModel: 'checkboxmodel',
    
    rowLines:true,
 	forceFit : true,
 	columnLines : true,
 	layout:'fit',  
 	bind : {
        store: '{data}'
    },
    
    initComponent: function () {
        var me = this;
        var viewModel = me.getViewModel();
        me.dockedItems = [
			{
			    xtype: 'pagingtoolbar',
				dock: 'bottom',
				displayInfo: true,
				pageSize: 20,
				//displayMsg:"显示从{0}条数据到{1}条数据，共{2}条数据",
				emptyMsg:"没有数据",
				bind: {
			        store: '{data}'
			    },
				plugins: new Admin.ux.ProgressBarPager()
			}
		];
		var st = me.getViewModel().getStore('data');
		st.on('load',function(s, records, successful, operation, eOpts){
			if(!successful){
				var responseText = operation._response.responseText;
				var josn = Ext.decode(responseText);
				Ext.toast({
				     html: "<font color='red'>"+josn.msg+"!</font>",
				     title: '错误',
				     width: 300,
				     align: 't'
				 });
			}
		});
		me.callParent();
	 }
 
});