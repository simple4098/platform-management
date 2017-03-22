Ext.define('Admin.view.widgets.Line', {
    extend: 'Ext.chart.CartesianChart',
    cls:'admin-widget shadow',
    xtype: 'line-view',
	title:'PV统计图',
    height:600,
    renderTo: document.body,
    insetPadding: 40,
    store:Ext.create('Ext.data.Store',{
    	 fields: ['cdate', 'ct'],
    	 proxy: {
	        type: 'ajax',
	        reader: {
	            type: 'json'
	        },
	        url: '/log/line'
	      },
	      autoLoad:false
    }),
   listeners:{
   		render:function(){
   			this.getStore().reload();
   		}
   },
   axes: [{
       type: 'numeric',
       position: 'left',
       fields: ['ct'],
       title: {
           text: 'PV值',
           fontSize: 15
       },
       grid: true,
       minimum: 0
   }, {
       type: 'category',
       position: 'bottom',
       fields: ['cdate'],
       title: {
           text: '时间轴',
           fontSize: 15
       },
   	   label: {
            rotate: {
                degrees: -45
            }
        }
   }],
   series: [{
       type: 'line',
       style: {
           stroke: '#30BDA7',
           lineWidth: 2
       },
       xField: 'cdate',
       yField: 'ct',
       marker: {
           type: 'path',
           path: ['M', - 4, 0, 0, 4, 4, 0, 0, - 4, 'Z'],
           stroke: '#30BDA7',
           lineWidth: 2,
           radius: 4,
           fill: 'white'
       },
        tooltip: {
	        trackMouse: true,
	        showDelay: 0,
	        dismissDelay: 0,
	        hideDelay: 0,
	        renderer: function(tooltip, record, item){
	        	 tooltip.setHtml(record.get('cdate') + '、PV:' + record.get('ct'));
	        }
	    }
   }]
});
