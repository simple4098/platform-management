Ext.define('Admin.view.system.user.UserForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'user-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
        {
            xtype: 'textfield',
            name:'user_id',
            id:'user_id',
            readOnlyCls:'x-item-disabled',
            fieldLabel: '账号',
            emptyText:'请输入账号[4-20位字母]',
            minLength:4,
            maxLength:20,
            vtype:'alpha'
        },
        {
            xtype: 'textfield',
            name:'user_pwd',
            id:'user_pwd',
            fieldLabel: '用户密码',
            inputType: 'password',
            emptyText:'请输入密码[6-20位字符]',
            regexText :"密码为6-20位字符组成",
            regex:/\w{6,20}/
        },
        {
            xtype: 'textfield',
            name:'user_name',
            emptyText:'请输入姓名',
            fieldLabel: '姓名',
            minLength:2,
            maxLength:10
        },
         {
            xtype: 'numberfield',
            name:'user_phone',
            fieldLabel: '手机号码',
            hideTrigger :true
        },
        {
            xtype: 'textfield',
            name:'user_email',
            allowBlank:true,
            fieldLabel: '邮箱',
            vtype:'email'
        },
        {
        		xtype: 'fieldcontainer',
        		fieldLabel: '选择部门',
        		layout: 'hbox',
        		items:[
	        		{
	        			xtype:'combo',
	        			flex:3,
					    queryMode: 'local',
					    minChars :1,
					    emptyText:'请选择部门',
					    displayField: 'dept_name',
					    name:'dept_id',
					    id:'dept_id',
					    allowBlank:false,
					    forceSelection :true,
					    valueField: 'id',
					    store : Ext.create('Ext.data.Store', {
						    fields: ['id', 'dept_name'],
						    proxy: {
						        type: 'ajax',
						        url: '/dept/json',
						        reader: {
						            type: 'json'
						        }
						    },
						    autoLoad:true
						}),
						listConfig: {
			                itemTpl: [
			                   '<div data-qtip="{dept_desc}">{dept_name}</div>'
			                ]
			            }
		        	},
	        		{
	        			xtype:'button',
	        			flext:1,
	        			tooltip:'快速新增部门',
	        			iconCls:'x-fa fa-plus',
	        			handler:function(b){
	        				var combo = b.up('fieldcontainer').down('combo');
	        				Ext.create('Admin.ux.form.TextEditable',{
	        					submitUrl:'/dept/add',
							    cmpt:combo,
							    submitName:'dept_name',
							    emptyText:'请输入部门',
							    compTitle:'添加部门',
							    animateTarget:b
	        				}).showAt(b.getX()+20,b.getY()+20);
	        			}
	        		}
        		]
        },
         {
	        xtype: 'tagfield',
	        fieldLabel: '选择角色',
	        emptyText:'请选择角色',
	        id:'role_id',
	        displayField: 'role_name',
	        valueField: 'id',
	     	queryMode: 'local',
	        minChars :1,
	        remoteFilter: true,
	        editable :true,
	        forceSelection :true,
         	filterPickList: true,
	        name:'role_id',
	        store: Ext.create('Ext.data.Store',{
	        	 fields: ['id','role_name'],
	        	 proxy: {
			        type: 'ajax',
			        url: '/role/json',
			        reader: {
			            type: 'json'
			        }
			    },
			    autoLoad:true
	        })
	    },
        {
            xtype: 'textareafield',
            name:'user_desc',
            rows:2,
            allowBlank:true,
            value:'工作要肯拼,生活要欢乐！',
            fieldLabel: '描述'
        },
        {
            xtype: 'radiogroup',
            fieldLabel: '状态',
            columns: 8,
            items: [
                {boxLabel: '启用', name: 'row_status', inputValue: 0, checked: true},
                {boxLabel: '禁用', name: 'row_status', inputValue: 1}
            ]
        }
        
        
    ]
});
