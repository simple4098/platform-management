Ext.define("Admin.model.system.plugin.PluginAuth",{
	extend: 'Admin.ux.Model',
    fields: [
		{name:'id'},
		{name:'pluginId'},
		{name:'businessId'},
		{name:'businessName'},
		{name:'businessType'},
		{name:'userId'},
		{name:'failueTime'},
		{name:'failueTimeValue'},
		{name:'status'}
		/*{name:'pluginTypeValue'},
		{name:'sort'},
		{name:'pluginPluginName',mapping:'plugin.pluginName'},
		{name:'pluginPluginUrl',mapping:'plugin.pluginUrl'},
		{name:'pluginPluginType',mapping:'plugin.pluginType'},
		{name:'pluginPluginTypeValue',mapping:'plugin.pluginTypeValue'},
		{name:'plugin.Publisher',mapping:'plugin.publisher'},
		{name:'pluginVersionNum',mapping:'plugin.versionNum'},
		{name:'pluginStatus',mapping:'plugin.status'}*/
    ]
});