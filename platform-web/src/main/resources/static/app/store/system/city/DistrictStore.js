Ext.define("Admin.store.system.city.DistrictStore",{
    extend:'Ext.data.Store',

    model: 'Admin.model.system.city.City',
    fields: ["districtId",'districtName','level','districtSort','remark'],
	alias:'store.district-store',
	proxy: {
        type: 'ajax',
         reader: {
             type: 'json',
             rootProperty:'data'
         },
        params  : {
            test : this.valueField
        },
         url: Ext.requestIP+'/puser/district/getSubDistrict',
         autoLoad: true
    }
});