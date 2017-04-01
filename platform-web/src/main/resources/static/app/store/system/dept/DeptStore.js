Ext.define("Admin.store.system.dept.DeptStore",{
	
	extend:'Admin.ux.GridStore',
	model: 'Admin.model.system.dept.Dept',
	alias:'store.dept-store',

    fields: ['deptId','deptName'],

    proxy: {
        type: 'ajax',
        url: Ext.requestIP+'/puser/department',
        reader: {
            type: 'json',
            rootProperty:'data'
        },
        writer : {    			
			type : 'json'
		}	
    }
});