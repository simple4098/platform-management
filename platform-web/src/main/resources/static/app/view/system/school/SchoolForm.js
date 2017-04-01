Ext.define('Admin.view.system.school.SchoolForm', {
    extend: 'Admin.ux.form.FormPanel',
    xtype: 'school-form',
    items: [
        {
            xtype:'combobox',
            name:'provinceId',
            emptyText:'请选择省份',
            fieldLabel: '省份',
            valueField: 'districtId',
            displayField : 'districtName',
            store: {
                type: 'province-store',
                autoLoad: true
            },
            listeners: {
                'change': function (combo, newIndex) {

                }
            }
        },
        {
            xtype:'combobox',
            name:'cityId',
            emptyText:'请选择城市',
            fieldLabel: '城市',
            valueField: 'districtId',
            displayField : 'districtName',
            store: {
                type: 'city-store',
                autoLoad: true
            }
        },
        {
            xtype:'combobox',
            name:'districtId',
            emptyText:'请选择地区',
            fieldLabel: '地区',
            valueField: 'districtId',
            displayField : 'districtName',
            store: {
                type: 'district-store',
                autoLoad: true
            }
        },
        {	xtype:'hiddenfield',name:'schoolId'},
        {
            xtype:'combobox',
            fieldLabel:'学校类型',
            emptyText:'请输入关键字',
            name:'type',
            id:'district',
            valueField: 'typeId',
            displayField : 'text',
            store : Ext.create('Ext.data.Store', {
                fields: ['typeId', 'text'],
                data : [
                    {"typeId":"1", "text":"小学"},
                    {"typeId":"2", "text":"初中"},
                    {"typeId":"3", "text":"小学+初中"},
                    {"typeId":"4", "text":"高中"}
                ]
            }),
            allowBlank:false
        },
        {
            xtype: 'textfield',
            name:'schoolName',
            fieldLabel: '学校名称',
            emptyText:'请输入学校名称',
            maxLength:50
        },
        {
            xtype: 'textareafield',
            name:'address',
            rows:2,
            fieldLabel: '地址',
            emptyText:'请输入学校地址',
            maxLength:500
        }

    ]
});
