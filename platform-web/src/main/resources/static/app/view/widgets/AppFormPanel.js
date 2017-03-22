Ext.define('Admin.view.widgets.AppFormPanel', {
    extend: 'Ext.form.Panel',
    layout: {
        type:'vbox',
        align:'stretch'
    },
    bodyPadding: 10,
    padding:10,
    scrollable: true,
    defaults: {
        labelWidth: 120,
        labelAlign:'right',
        labelSeparator: '',
        allowBlank :false,
	    msgTarget: 'side'
    }

});
