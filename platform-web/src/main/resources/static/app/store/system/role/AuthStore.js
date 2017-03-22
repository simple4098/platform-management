Ext.define("Admin.store.system.role.AuthStore",{
	extend:'Ext.data.TreeStore',
	
	fields: ["id",'code','text','checked','leaf','expanded','pid','ptext','viewType',
	'create_time','iconCls','rowCls','xiconCls','deep','sort','action'],
	
	alias:'store.authStore',
	//defaultRootText:'顶级节点',
	proxy: {
        type: 'ajax',
        reader: {
            type: 'json'
        },
        url: '/role/auth'
    }
	
});