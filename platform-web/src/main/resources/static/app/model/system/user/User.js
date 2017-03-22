Ext.define("Admin.model.system.user.User",{
	extend: 'Admin.ux.Model',
    fields: [
        'id',
		'user_id',
		'user_pwd',
		'user_name',
		'user_phone',
		'user_email',
		'row_status',
		'create_time',
		'user_desc',
		'dept_name',
		'dept_id'
    ]
});