Ext.define('Admin.store.system.menu.SelectMenuStore', {
    extend: 'Ext.data.Store',

    alias: 'store.remote-states',

    fields: ['id','text','code'],
    
    storeId: 'remote-states',

    proxy: {
        type: 'ajax',
        url: '/menu/getSelect',
        reader: {
            type: 'json'
        }
    }
});