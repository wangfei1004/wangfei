package com.jk.model;

public class State {
	private Boolean checked  =false;
	private Boolean disabled =false;
	private Boolean expanded =false;
	private Boolean selected =false;
	public Boolean getChecked() {
		return checked;
	}
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	public Boolean getDisabled() {
		return disabled;
	}
	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}
	public Boolean getExpanded() {
		return expanded;
	}
	public void setExpanded(Boolean expanded) {
		this.expanded = expanded;
	}
	public Boolean getSelected() {
		return selected;
	}
	public void setSelected(Boolean selected) {
		this.selected = selected;
	}
	
	public State() {
		super();
		// TODO Auto-generated constructor stub
	}
	public State(Boolean checked, Boolean disabled, Boolean expanded, Boolean selected) {
		super();
		this.checked = checked;
		this.disabled = disabled;
		this.expanded = expanded;
		this.selected = selected;
	}
	public State(Boolean expanded) {
		super();
		this.expanded = expanded;
	}
	
	
}
