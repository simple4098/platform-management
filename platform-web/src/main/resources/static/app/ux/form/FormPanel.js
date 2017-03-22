Ext.define('Admin.ux.form.FormPanel', {
    extend: 'Ext.form.Panel',
    layout: {
        type:'vbox',
        align:'stretch'
    },
    bodyPadding: 10,
    scrollable: true,
    defaults: {
        labelWidth: 80,
        labelAlign:'right',
        labelSeparator: '',
        allowBlank :false,
	    msgTarget: 'side'
    }

});
