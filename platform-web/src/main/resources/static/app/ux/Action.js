/**
 * 公共的表单提方法
 */
Ext.define("Admin.ux.Action",{
	/**
	 * 
	 * @param {} formObj   表单的Form对象
	 * @param {} _url      提交的URL
	 * @param {} grid      保存成功后要刷新的Grid
	 * @param {} win       保存成功后要关闭的window
	 */
	submit:function(formObj,_url,grid,win,extValue){
	    var me = this;
	    var values = formObj.getFieldValues();
	    if(extValue){
	    	values = Ext.Object.merge(values,extValue);
	    }
	    formObj.submit({
			waitMsg:'正在提交...',
			clientValidation: true,
			url:_url,
			params:values,
			success:function(form,action){
				if(action.result.msg!=undefined){
					Ext.info('保存成功'+action.result.msg);
				}else{
					Ext.info('保存成功');
				}
				if(grid){
					//grid.store.removeAll();
					grid.store.reload();
				}
				if(win){
					win.close();
				}
			},
			failure:function(form,action){
					switch (action.failureType) {
						case Ext.form.action.Action.CLIENT_INVALID:
							Ext.error('客户端验证不通过');
							break;
						default:
							Ext.error('保存失败,'+action.result.msg);
					}
				}	
			});
	},
	/**
	 * 
	 * @param {} _ids  要删除的对象ID数组
	 * @param {} _url  提交的URL
	 * @param {} grid  完成后要刷新的grid
	 */
	remove:function(_obj,_url,grid,tagetBtn){
		var me = this;
		var form = Ext.create('Ext.form.Panel',{});
		Ext.Msg.show({
		    title: '提示',
		    msg: '<font color=red>确认删除?</font>',
		    width: 300,
		    buttons: Ext.Msg.OKCANCEL,
		    animateTarget: tagetBtn,
		    icon: Ext.MessageBox.QUESTION,
		    fn: function(btn){
	    	   if (btn == 'ok') {
				form.getForm().submit({
					waitMsg:'正在提交...',
					url:_url,
					params:_obj,
					success:function(form,action){
						var msg = action.result.msg;
						if(msg){
							Ext.info('删除成功,'+msg);	
						}else{
							Ext.info('删除成功');
						}
						if(grid){
							grid.store.reload();
						}
					},
					failure:function(form,action){
							Ext.error("删除失败,"+action.result.msg);
						}	
					});
				}
		    }
		});
	},
	/**
	 * 下载文件
	 * @param {} jsonObj  参数 json对象
	 * @param {} _url
	 */
	download:function(jsonObj,_url){
		//创建一个form对象方便提交数据
		var form = Ext.create('Ext.form.Panel',{});
		form.form.submit({
			url:_url,
			params:jsonObj,
			standardSubmit :true,
			success:function(form,action){
				
			},
			failure:function(form,action){
					Ext.error('下载失败,'+action.result.message);
				}	
		});
	},
	/**
	 * 导出报表
	 * @param {} jsonObj  参数 json对象
	 * @param {} _url
	 */
	exportAction:function(jsonObj,_url,tagetBtn){
		Ext.Msg.show({
		    title: '提示',
		    msg: '<font color=red>确认导出报表?</font>',
		    width: 300,
		    buttons: Ext.Msg.OKCANCEL,
		    animateTarget:tagetBtn,
		    icon: Ext.MessageBox.INFO,
		    fn: function(btn){
	    	   if (btn == 'ok') {
	    	   	  var form = Ext.create('Ext.form.Panel',{});
					form.form.submit({
						url:_url,
						params:jsonObj,
						standardSubmit :true,
						success:function(form,action){
							
						},
						failure:function(form,action){
							Ext.error('导出失败,'+action.result.message);
						}	
					});
				}
		    }
		});
	},
	/**
	 * 搜索方法
	 * @param {} grid   
	 * @param {} obj  json对象参数
	 */
	search:function(grid,obj){
		Ext.apply(grid.getStore().proxy.extraParams,obj);
		grid.getStore().removeAll();	
		grid.getStore().loadPage(1);
		//grid.getStore().reload();
	},
	/**
	 * 公共的普通数据提交方法
	 * @param {} jsonData  //json数据
	 * @param {} _url 
	 * @param {} grid   
	 */
	doAction:function(obj){
		
		var me = this;
		var form = Ext.create('Ext.form.Panel',{});
		var msg = "您确认要进行此操作吗?"
		if(obj.msg){
			msg = obj.msg
		}
		Ext.Msg.show({
		    title: '提示',
		    msg: '<font color=red>'+msg+'</font>',
		    width: 300,
		    buttons: Ext.Msg.OKCANCEL,
		    animateTarget: obj.tagetBtn,
		    icon: Ext.MessageBox.INFO,
		    fn: function(btn){
	    	   if (btn == 'ok') {
				form.getForm().submit({
					waitMsg:'正在提交...',
					url:obj.url,
					params:obj.params,
					success:function(form,action){
						var message = action.result.msg;
						if(message){
							Ext.info('操作成功,'+message);	
						}else{
							Ext.info('操作成功');
						}
						if(obj.grid){
							g = obj.grid;
							g.store.reload();
						}
						if(obj.win){
							win = obj.win;
							win.close();
						}
					},
					failure:function(form,action){
							Ext.error("操作失败,"+action.result.msg);
						}	
					});
				}
		    }
		});
	},
	
	hasAuth:function(_action){
		
		var flag = false;
		
    	Ext.Ajax.request({
    	     url: '/hasAuth',
    	     async:false,
    	     params :{action:_action},
    	     success: function(response, opts) {
    	    	 var obj = Ext.decode(response.responseText);
    	    	 if(obj.success){
    	    		 flag = true;
    	    	 }
    	     },
    	     failure: function(response, opts) {
    	    	 flag = false;
    	     }
    	});
		return !flag;
	}
});