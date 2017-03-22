Ext.define('Admin.view.chart.LineChart', {
    extend: 'Ext.container.Container',
    xtype: 'chart',
    layout: 'fit',
    requires: [
        'Ext.ux.layout.ResponsiveColumn',
        'Admin.ux.form.KindEditor'
    ],
    layout: 'responsivecolumn',
    items:[
        {
		  	xtype:'line-view',
		    userCls: 'big-100 small-100',
		    height:600,
		    listeners:{
		    	afterrender:function(view){
		    		view.setStore(
		    			Ext.create('Ext.data.Store',{
					    	 fields: ['cdate', 'ct'],
					    	 proxy: {
						        type: 'ajax',
						        reader: {
						            type: 'json'
						        },
						        url: '/log/line'
						      },
						     autoLoad:true
					    })
		    		);
		    	}
		    }
        }
    ]
});
