Ext.define("Admin.store.system.role.RoleStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.role.Role',
	alias:'store.role-store',
	
	proxy: {
        type: 'ajax',
        url: '/role/list',
        reader: {
            type: 'json',
            rootProperty : 'list',
			totalProperty : 'totalRow'
        },
        writer : {    			
			type : 'json'
		}	
    }
});