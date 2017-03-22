Ext.define("Admin.store.system.user.UserStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.user.User',
	alias:'store.user-store',
	
	proxy: {
        type: 'ajax',
        url: '/user/list',
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