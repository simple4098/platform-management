console.log("==============>2"+Ext.requestIP)
Ext.define('Admin.view.system.user.UserDisplayForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'user-display-form',
    items: [
    	{	xtype:'hiddenfield',name:'id'	},
    	{	xtype:'hiddenfield',name:'row_status'	},
        {
            xtype: 'displayfield',
            name:'user_id',
            fieldLabel: '账号'
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
					    readOnly :true,
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
						        url: Ext.requestIP+'/dept/json',
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
		        	}
        		]
        },
         {
	        xtype: 'tagfield',
	        fieldLabel: '选择角色',
	        emptyText:'请选择角色',
	        id:'role_id',
	        readOnly :true,
	        hidden:true,
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
			        url: Ext.requestIP+'/role/json',
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
        }
    ]
});
