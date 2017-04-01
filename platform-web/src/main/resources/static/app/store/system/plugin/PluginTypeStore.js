Ext.define("Admin.store.system.plugin.PluginTypeStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.plugin.PluginType',
	alias:'store.plugin-type-store',
	
	proxy: {
        type: 'ajax',
        url: '/plugin-type/list',

        reader: {
            type: 'json',
            rootProperty : 'data.list',
			totalProperty : 'data.totalRow'
        },
        writer : {    			
			type : 'json'
		}
    },
    listeners: {
        beforeload: function(proxy, response, operation){
            console.log("==========="+response._page+"=="+response._limit);
           /* var new_params = { pageNo: response._page, pageSize:response._limit};
            Ext.apply(proxy.extraParams, new_params);*/
        }
    }
});