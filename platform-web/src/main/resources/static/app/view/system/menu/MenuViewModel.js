Ext.define('Admin.view.system.menu.MenuViewModel', {
    extend: 'Ext.app.ViewModel',
    alias: 'viewmodel.menu-view-model',

    // TODO - Add view data or remove if not needed
    
    stores: {
        menus: {
            //Store reference
            type: 'menuStore'
   		 }
    }
});