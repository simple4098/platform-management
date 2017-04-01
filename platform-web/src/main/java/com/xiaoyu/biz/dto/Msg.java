package com.xiaoyu.biz.dto;

public class Msg {
	private boolean success;
	private String msg;
	private String status;
	private Object ext;
	
	public Msg(boolean success, String msg, Object ext) {
		super();
		this.success = success;
		this.msg = msg;
		this.ext = ext;
	}

	public Msg() {
		super();
	}

	public Msg(boolean success, String msg) {
		super();
		this.success = success;
		this.msg = msg;
	}

	public Msg(boolean success) {
		super();
		this.success = success;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getExt() {
		return ext;
	}

	public void setExt(Object ext) {
		this.ext = ext;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
