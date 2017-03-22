Ext.define('Admin.view.widgets.WidgetForm', {
    extend: 'Admin.view.widgets.AppFormPanel',
    xtype: 'widget-form',
    title:'Ext基础表单',
    viewModel: {
	    data:{
	    	user : {user_id:'张三',user_desc:'工作要肯拼,生活要欢乐。'},
	    	tjdata:{days:'12',days7:'1854',hists:'5241'}
	    }
    },
    
    items: [
    
    	 {
            xtype: 'textfield',
            fieldLabel: 'Textfield',
            emptyText:'textfield',
            maxLength:20
        },
        {
	        xtype: 'checkboxgroup',
	        fieldLabel: 'Checkbox',
	        // Arrange checkboxes into two columns, distributed vertically
	        columns: 4,
	        vertical: true,
	        items: [
		            { boxLabel: 'Item 1', name: 'rb', inputValue: '1' },
		            { boxLabel: 'Item 2', name: 'rb', inputValue: '2', checked: true },
		            { boxLabel: 'Item 3', name: 'rb', inputValue: '3' }
		        ]
		 },
		 {
	        xtype: 'radiogroup',
	        fieldLabel: 'Radio',
	        // Arrange radio buttons into two columns, distributed vertically
	        columns: 4,
	        vertical: true,
	        items: [
	            { boxLabel: 'Item 1', name: 'rb', inputValue: '1' },
	            { boxLabel: 'Item 2', name: 'rb', inputValue: '2', checked: true},
	            { boxLabel: 'Item 3', name: 'rb', inputValue: '3' },
	            { boxLabel: 'Item 4', name: 'rb', inputValue: '4' }
	        ]
	    },
	    {
	    	fieldLabel:'ComboBox',
	    	xtype:'combobox',
		    queryMode: 'local',
		    displayField: 'name',
		    valueField: 'abbr',
		    store:  Ext.create('Ext.data.Store', {
			    fields: ['abbr', 'name'],
			    data : [
			        {"abbr":"AL", "name":"Alabama"},
			        {"abbr":"AK", "name":"Alaska"},
			        {"abbr":"AZ", "name":"Arizona"}
			    ]
			})
	    },
	    {
	        xtype: 'datefield',
	        fieldLabel:'Date',
	        name: 'from_date',
	        maxValue: new Date()  // limited to the current date or prior
	    },
	    {
	        xtype: 'filefield',
	        name: 'photo',
	        fieldLabel: 'Photo',
	        msgTarget: 'side',
	        allowBlank: false,
	        buttonText: 'Select Photo...'
	    },
	    {
	        xtype: 'numberfield',
	        name: 'bottles',
	        fieldLabel: 'Bottles of Beer',
	        value: 99,
	        maxValue: 99,
	        minValue: 0
	    },
	    {
          xtype: 'tagfield',
          fieldLabel: 'Select a Show',
          displayField: 'show',
          valueField: 'id',
          queryMode: 'local',
          filterPickList: true,
          store:  Ext.create('Ext.data.Store', {
		      fields: ['id','show'],
		      data: [
		          {id: 0, show: 'Battlestar Galactica'},
		          {id: 1, show: 'Doctor Who'},
		          {id: 2, show: 'Farscape'},
		          {id: 3, show: 'Firefly'},
		          {id: 4, show: 'Star Trek'},
		          {id: 5, show: 'Star Wars: Christmas Special'}
		      ]
		   })
      	},
      	{
	        xtype: 'timefield',
	        name: 'in',
	        fieldLabel: 'Time In',
	        minValue: '6:00 AM',
	        maxValue: '8:00 PM',
	        increment: 30,
	        anchor: '100%'
	    },
	     {
            xtype: 'textareafield',
            name:'dept_desc',
            rows:2,
            allowBlank:true,
            fieldLabel: 'textareafield',
            maxLength:500
        },
	    {
	        xtype: 'htmleditor',
	        fieldLabel: 'htmleditor',
	        enableColors: false,
	        enableAlignments: false
	    }
	]
});
