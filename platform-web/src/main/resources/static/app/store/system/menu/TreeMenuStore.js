Ext.define("Admin.store.system.menu.TreeMenuStore",{
	extend:'Ext.data.TreeStore',
	
	fields: ["id",'code','text','leaf','expanded','pid','ptext','viewType',
	'createTime','iconCls','rowCls','iconCls','deep','sort','action'],
	
	alias:'store.menuStore',
	
	 proxy: {
        type: 'ajax',
        reader: {
            type: 'json'
        },
        url: '/menu/list'
    }
	
});