Ext.define("Admin.store.system.employee.ExtEmployeeStore",{
	extend:'Ext.data.TreeStore',
    model: 'Admin.model.system.employee.Employee',

	fields: ["userId",'fullName','idCard','birthday','email','mobile','gender','fpy','spy','version','enable','employeeId','address','major','degree','schoolId','remark','gmtCreate','gmtModified'],

	alias:'store.employee-store',

	 proxy: {
        type: 'ajax',
        reader: {
            type: 'json',
            rootProperty:'data'
        },
        url: Ext.requestIP+'/puser/employee/listByVersion?version=0'
    }

});