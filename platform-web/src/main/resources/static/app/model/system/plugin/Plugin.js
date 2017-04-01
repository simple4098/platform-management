Ext.define("Admin.model.system.plugin.Plugin",{
	extend: 'Admin.ux.Model',
    fields: [
        'id',
		'pluginName',
		'pluginUrl',
		'failueTime',
		'failueTimeValue',
		'pluginTypeName',
	/*	'pluginType',*/
		'pluginTypeValue',
		'publisher',
		'versionNum',
		'status',
		'createdTime'
    ]
});