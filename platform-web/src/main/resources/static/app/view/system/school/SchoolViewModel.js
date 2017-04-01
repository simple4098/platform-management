Ext.define('Admin.view.system.school.SchoolViewModel', {
    extend: 'Ext.app.ViewModel',
    alias: 'viewmodel.ext-school-model',

    // TODO - Add view data or remove if not needed
    
    stores: {
        menus: {
            //Store reference
            type: 'schoolStore'
   		 }
    }
});