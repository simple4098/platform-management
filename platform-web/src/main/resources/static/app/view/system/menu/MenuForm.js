Ext.define('Admin.view.system.menu.MenuForm', {
    extend: 'Ext.form.Panel',
    xtype: 'menu-form',
	width:800,
	height:400,
	
    layout: {
        type:'vbox',
        align:'stretch'
    },

    bodyPadding: 10,
    
    scrollable: true,

    defaults: {
        labelWidth: 80,
        labelSeparator: '',
        allowBlank :true,
	    msgTarget: 'side',
	    labelAlign: 'right'
    },

    items: [
    	{xtype:'hidden',name:'id'},
    	{xtype:'hidden',name:'deep'},
    	{xtype:'hidden',name:'pid',id:'pid',value:'0'},
    	{
    		xtype:'simple-combobox-tree',
    		fieldLabel:'上级菜单',
    		name:'pname',
    		allowBlank:false,
    		forceSelection :true,
    		editable:false,
    		hiddenName : 'hiddenName',  
    		storeUrl : '/menu/json',  
    		cascade : 'child',//级联方式:1.child子级联;2.parent,父级联,3,both全部级联  
	        checkModel:'single',//当json数据为不带checked的数据时只配置为single,带checked配置为double为单选,不配置为多选  
	        rootId : '0',  
	        rootText : '顶级节点',  
	        treeNodeParameter : ''
    	},
       /* {
            xtype: 'combobox',
            fieldLabel: '父级菜单',
            publishes: 'value',
            displayField: 'text',
            valueField: 'id',
            allowBlank :true,
            name:'pid',
            id:'pid',
            anchor: '-15',
            store: {
                type: 'remote-states'
            },

            // We're forcing the query to run every time by setting minChars to 0
            // (default is 4)
            minChars: 0,
            queryParam: 'q',
            queryMode: 'remote',
            forceSelection : true,
            listeners:{
            	beforeselect : function( combo, record, index, eOpts ){
            		var text = record.get('text');
            		text = text.replace(/&nbsp;/gi,'');
            		record.set('text',text);
            	}
            }
        },*/
        { xtype: 'textfield', name:'text', fieldLabel: '菜单名称', emptyText:'输入菜单名称', allowBlank :false },
        { xtype: 'textfield', name:'viewType', fieldLabel: '视图'},
        { xtype: 'textfield', name:'action', fieldLabel: '资源' },
        { xtype: 'textfield', name:'sort', fieldLabel: '排序',value:'0', allowBlank :false },
        { 	
        	xtype: 'combo',
       		fieldLabel: '选择图标',
       		name:'iconCls',
        	queryMode: 'remote',
        	minChars: 2,
		    displayField: 'iconName',
		    allowBlank:true,
		    valueField: 'iconName',
		    store : Ext.create('Ext.data.Store', {
			    fields: ["id",'iconName'],
			    proxy: {
			        type: 'ajax',
			        url:'/icon/json',
			        reader: {
			            type: 'json'
			        }
			    },
			    autoLoad:true
			}),
			 tpl: [
                '<ul class="x-list-plain">',
                    '<tpl for=".">',
                        '<li class="x-boundlist-item">',
                            '<i class="{iconName}"></i>&nbsp;&nbsp;{iconName}',
                        '</li>',
                    '</tpl>',
                '</ul>'
            ]
        },
        { xtype: 'textfield', name:'rowCls', fieldLabel: '附加样式' },
         {
            xtype: 'radiogroup',
            fieldLabel: '状态',
            columns: 8,
            items: [
                {boxLabel: '启用', name: 'status', inputValue: 1, checked: true},
                {boxLabel: '禁用', name: 'status', inputValue: 0}
            ]
        }
        
    ]
});
