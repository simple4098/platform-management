Ext.define("Admin.store.system.msg.MsgStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.msg.Msg',
	alias:'store.msg-store',
	
	proxy: {
        type: 'ajax',
        url: '/msg/list',
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