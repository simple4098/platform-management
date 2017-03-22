Ext.define("Admin.store.system.log.LogStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.log.Log',
	alias:'store.log-store',
	
	proxy: {
        type: 'ajax',
        url: '/log/list',
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