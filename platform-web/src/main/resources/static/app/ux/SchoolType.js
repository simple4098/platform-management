/**
 * 通过type获取学校类型名称
 */
Ext.define("Admin.ux.SchoolType",{
    getSchoolTypeName:function(typeId){
    	var typeName;
        switch (typeId){
            case 1:
                typeName = '小学';
                break;
            case 2:
                typeName = '初中';
                break;
            case 3:
                typeName = '小学+初中';
                break;
            case 4:
                typeName = '高中';
                break;
            default:
                typeName = '未定义的学校类型';
        }
        return typeName;
    }
});