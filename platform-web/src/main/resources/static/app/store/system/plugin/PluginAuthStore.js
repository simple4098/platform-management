Ext.define("Admin.store.system.plugin.PluginAuthStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.plugin.PluginAuth',
	alias:'store.plugin-auth-store',
	
	proxy: {
        type: 'ajax',
        url: '/plugin-auth/list',
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