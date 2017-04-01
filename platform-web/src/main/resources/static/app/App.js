/*
 * This file is responsible for launching the application. Application logic should be
 * placed in the Admin.Application class.
 */
Ext.application({



    name: 'Admin',

    extend: 'Admin.Application',

    requires: [
        'Admin.Application',
        'Admin.ux.ProgressBarPager',
        //封装
        'Admin.ux.Model',
        'Admin.ux.GridStore',
        'Admin.ux.Grid',
        'Admin.ux.PageGrid',
        'Admin.ux.form.FormPanel',
        'Admin.ux.form.KeySearchField',
        'Admin.ux.form.PluginSearchField',
        'Admin.ux.GridColumnView',
        'Admin.ux.ButtonColumn',
        'Admin.ux.ComboBoxTree',
        'Admin.ux.SimpleComboBoxTree',
        'Admin.ux.Util',
        'Admin.ux.form.TextEditable',
        'Admin.ux.form.XHtmlEditor',
        'Admin.ux.GridController'

    ],
    views:[
    	'Admin.view.main.Main',
    	'Admin.view.main.MainContainerWrap',
    	'Admin.view.main.MainController',
    	'Admin.view.main.MainModel',
    	'Admin.view.main.Passwd',
    	'Admin.view.dashboard.Dashboard',
    	 //登录
    	'Admin.view.authentication.AuthenticationController',
    	'Admin.view.authentication.AuthenticationModel',
    	'Admin.view.authentication.Dialog',
    	'Admin.view.authentication.LockingWindow',
    	'Admin.view.authentication.LockScreen',
    	'Admin.view.authentication.Login',
    	'Admin.view.authentication.PasswordReset',
    	'Admin.view.authentication.Register',
    	
    	//page
    	'Admin.view.page.ErrorBase',
    	'Admin.view.page.Error404',
    	//wiget
    	'Admin.view.widgets.Line',
    	'Admin.view.widgets.Me'
    ],
    stores:[
    	'Admin.store.NavigationTree'
    ],
    models:[
            
    ]
});
/************加载个模块************/
//菜单管理
Ext.require([
	'Admin.view.system.menu.TreeMenu',
	'Admin.view.system.menu.MenuForm',
    'Admin.view.system.menu.MenuViewModel',
	'Admin.view.system.menu.MenuController',
	'Admin.store.system.menu.SelectMenuStore',
    'Admin.store.system.menu.TreeMenuStore'
]);
//学校管理
Ext.require([
    'Admin.view.system.school.ExtSchool',
    'Admin.view.system.school.SchoolViewModel',
    'Admin.view.system.school.SchoolForm',
    'Admin.view.system.school.SchoolController',
    'Admin.model.system.school.School',
    'Admin.store.system.school.ExtSchoolStore',
	'Admin.ux.SchoolType'
]);
//城市联动
Ext.require([
    'Admin.model.system.city.City',
    'Admin.store.system.city.ProvinceStore',
    'Admin.store.system.city.CityStore',
    'Admin.store.system.city.DistrictStore'
]);
//教职工管理
Ext.require([
    'Admin.view.system.employee.EmployeeForm',
    'Admin.store.system.employee.ExtEmployeeStore',
    'Admin.view.system.employee.EmployeeController',
    'Admin.model.system.employee.Employee',
    'Admin.view.system.employee.ExtEmployee'
]);
//插件管理
Ext.require([
	'Admin.view.system.plugin.Plugin',
	'Admin.view.system.plugin.PluginForm',
	'Admin.view.system.plugin.PluginController',
    'Admin.model.system.plugin.Plugin',
	'Admin.store.system.plugin.PluginStore',
]);
//插件授权管理
Ext.require([
	'Admin.view.system.pluginAuth.PluginAuth',
	'Admin.view.system.pluginAuth.PluginAuthForm',
	'Admin.view.system.pluginAuth.PluginAuthDisplayForm',
	'Admin.view.system.pluginAuth.PluginAuthController',
    'Admin.model.system.plugin.PluginAuth',
	'Admin.store.system.plugin.PluginAuthStore',
]);
//插件类型
Ext.require([
    'Admin.view.system.pluginType.PluginType',
    'Admin.view.system.pluginType.PluginTypeForm',
    'Admin.view.system.pluginType.PluginTypeController',
    'Admin.model.system.plugin.PluginType',
    'Admin.store.system.plugin.PluginTypeStore',
]);
//角色管理
Ext.require([
	'Admin.view.system.role.Role',
	'Admin.view.system.role.RoleForm',
	'Admin.view.system.role.RoleController',
	'Admin.view.system.role.GiveAuth',
	'Admin.model.system.role.Role',
	'Admin.store.system.role.RoleStore',
	'Admin.store.system.role.AuthStore'
]);
//用户管理
Ext.require([
	'Admin.view.system.user.User',
	'Admin.view.system.user.UserForm',
	'Admin.view.system.user.UserDisplayForm',
	'Admin.view.system.user.UserController',
	
	'Admin.model.system.user.User',
	'Admin.store.system.user.UserStore'
]);
//加载日志
Ext.require([
	'Admin.view.system.log.Log',
	'Admin.model.system.log.Log',
	'Admin.store.system.log.LogStore'
]);
//加载部门
Ext.require([
	'Admin.model.system.dept.Dept',
	'Admin.store.system.dept.DeptStore',
	'Admin.view.system.dept.Dept',
	'Admin.view.system.dept.DeptController',
	'Admin.view.system.dept.DeptForm'
]);
//加载消息
/*Ext.require([
	'Admin.model.system.msg.Msg',
	'Admin.store.system.msg.MsgStore',
	'Admin.view.system.msg.Msg',
	'Admin.view.system.msg.MsgController'
]);*/
//加载统计
Ext.require([
	'Admin.view.chart.LineChart'
]);

//加载组建
Ext.require([
	'Admin.view.widgets.AppFormPanel'
	/*'Admin.view.widgets.WidgetForm',
	'Admin.view.widgets.WidgetKindEditor'*/
]);
var p = Ext.create('IPPath');
Ext.requestIP = p.requestIP;