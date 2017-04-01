Ext.define("Admin.store.system.plugin.PluginStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.plugin.Plugin',
	alias:'store.plugin-store',
	
	proxy: {
        type: 'ajax',
        url: '/plugin/list',
        extraParams: {
            //方法1，在这里添加额外参数，这个，呃，实测时参数多了会是失效
           /* pageNo: response._page,
            pageSize: response._limit*/
        },

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
            var new_params = { pageNo: response._page, pageSize:response._limit};
            Ext.apply(proxy.extraParams, new_params);
        }
    }
});