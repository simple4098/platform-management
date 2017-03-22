Ext.define("Admin.ux.Grid",{
	extend: 'Ext.grid.Panel',

    margin:10,
    
    selModel: 'checkboxmodel',
    emptyText:'暂无数据',
    rowLines:true,
 	forceFit : true,
 	layout:'fit',  
 	columnLines : true
 
});