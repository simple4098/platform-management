//选中子节点
function setChildChecked(node,checked){
        node.expand();
        node.set({checked:checked});
        if(node.hasChildNodes()){
            node.eachChild(function(child) {
                setChildChecked(child,checked);
            });
        }
    }
  //选中父节点
function setParentChecked(node,checked){
    node.set({checked:checked});
    var parentNode = node.parentNode;
    if(parentNode !=null){
        var flag = false;
        parentNode.eachChild(function(child) {
            if(child.data.checked == true){
                flag = true;
            }
        });
        if(checked == false){
            if(!flag){
                setParentChecked(parentNode,checked);
            }
        }else{
            if(flag){
                setParentChecked(parentNode,checked);
            }
        }
     }
}
Ext.define('Admin.view.system.role.GiveAuth', {
	extend: 'Ext.tree.Panel',
    xtype: 'give-auth',
    rootVisible: false,
    layout :'fit',
    animate:true,
    reserveScrollbar: true,
    viewModel:{
    	stores: {
	        authStores: {
	            //Store reference
	            type: 'authStore',
	            autoLoad:false
	   		 }
	    }
    },
    
    bind: {
        store: '{authStores}'
    },
    
    listeners:{
    	"checkchange": function(node,checked,eOpts) {
               setChildChecked(node,checked);
               setParentChecked(node,checked); 
         }
    },
    tbar:[
    	{
    		text:'刷新',
    		iconCls: 'x-fa fa-refresh',
	    	handler:function(){
	    		this.up('treepanel').getStore().reload();
	    	}
    	},
    	{
    		text:'展开所有',
    		iconCls: 'x-fa fa-angle-down',
	    	handler:function(){
	    		this.up('treepanel').expandAll();
	    	}
    	},
    	{
    		text:'收起所有',
    		iconCls: 'x-fa fa-angle-up',
	    	handler:function(){
	    		this.up('treepanel').collapseAll();
	    	}
    	}
    ]
    
});
