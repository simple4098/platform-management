Ext.define("Admin.store.system.dept.DeptStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.dept.Dept',
	alias:'store.dept-store',
	
	proxy: {
        type: 'ajax',
        url: '/dept/list',
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