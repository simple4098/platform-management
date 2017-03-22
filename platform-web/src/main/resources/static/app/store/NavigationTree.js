Ext.define('Admin.store.NavigationTree', {
    extend: 'Ext.data.TreeStore',

    storeId: 'NavigationTree',

    fields: ['id','code','text','leaf','expanded','pid','viewType','iconCls','rowCls'],

    proxy: {
        type: 'ajax',
        reader: {
            type: 'json'
        },
        url: '/menu/menutree'
    },
    autoLoad:false
});
