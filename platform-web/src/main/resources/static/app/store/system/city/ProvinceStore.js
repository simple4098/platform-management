Ext.define("Admin.store.system.city.ProvinceStore",{
    extend:'Ext.data.Store',

    model: 'Admin.model.system.city.City',
    fields: ["districtId",'districtName','level','districtSort','remark'],
	alias:'store.province-store',
	proxy: {
        type: 'ajax',
         reader: {
             type: 'json',
             rootProperty:'data'
         },
         url: Ext.requestIP+'/puser/district/getLevelOneDistrict',
         autoLoad: true
    }
});