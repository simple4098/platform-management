Ext.define("Admin.model.system.log.Log",{
	extend: 'Admin.ux.Model',
    fields: [
        'id',
		'user_name',
		'action_text',
		'method',
		'log_url',
		'create_time',
		'log_params'
    ]
});