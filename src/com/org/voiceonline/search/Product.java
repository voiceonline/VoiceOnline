/**
 * 
 */
package com.org.voiceonline.search;

import java.util.Map;

/**
 * @author ajitesh.j.madai
 *
 */
public class Product {
	
	private String id;
	
	private String name;
	
	private String desc;
	
	private String category;
	
	private Map<String, String> attributes;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Map<String, String> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, String> attributes) {
		this.attributes = attributes;
	}
	
	
	

}
