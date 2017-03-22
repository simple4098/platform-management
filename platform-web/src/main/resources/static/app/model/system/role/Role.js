Ext.define("Admin.model.system.role.Role",{
	extend: 'Admin.ux.Model',
    fields: [
        'id',
		'role_name',
		'create_time',
		'role_desc',
		'row_status'
    ]
});