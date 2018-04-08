package com.jk.model;

import java.io.Serializable;

public class Tree implements Serializable {
 private Integer tid;
 private String text;
 private String url;
 private State state;
 private String icon;
 private Integer pid;
public Integer getTid() {
	return tid;
}
public void setTid(Integer tid) {
	this.tid = tid;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public State getState() {
	return state;
}
public void setState(State state) {
	this.state = state;
}
public String getIcon() {
	return icon;
}
public void setIcon(String icon) {
	this.icon = icon;
}
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}

}
