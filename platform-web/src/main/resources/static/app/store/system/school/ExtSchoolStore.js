Ext.define("Admin.store.system.school.ExtSchoolStore",{
    extend:'Admin.ux.GridStore',
    model: 'Admin.model.system.school.School',

	fields: ["address",'cityId','districtId','enable','gmtCreate','gmtModified','provinceId','schoolId',
        'schoolName','type','version'],

	alias:'store.school-store',
    pageSize:2,
	proxy: {
        type: 'ajax',
        actionMethods : {
            read : 'POST'
        },
        reader: {
            type: 'json',
            rootProperty:'data.list',
            totalProperty: 'data.total'
        },
        url: Ext.requestIP+'/puser/school/listSchool'
    },
    listeners: {
        'beforeload': function (store, op, options) {
            var params = {
                pageNo: store.lastOptions.page,
                pageSize : store.lastOptions.limit
            };
            Ext.apply(store.proxy.extraParams, params);
        }
    }
});