Ext.define("Admin.model.system.msg.Msg",{
	extend: 'Admin.ux.Model',
    fields: [
        'id',
		'msg_title',
		'msg_content',
		'create_time',
		'action_time',
		'status',
		'level',
		'uid'
    ]
});