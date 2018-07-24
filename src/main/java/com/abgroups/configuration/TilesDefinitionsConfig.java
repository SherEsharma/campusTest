package com.abgroups.configuration;

import java.util.HashMap;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.Definition;
import org.apache.tiles.definition.DefinitionsFactory;

import com.abgroups.utils.ConstantURL;
import com.abgroups.utils.IConstant;



public final class TilesDefinitionsConfig implements DefinitionsFactory {

	private static final Map<String, Definition> tilesDefinitions = new HashMap<String, Definition>();

	public Definition getDefinition(String name, org.apache.tiles.request.Request tilesContext) {

		return tilesDefinitions.get(name);
	}

	private static void addDefaultLayoutDef(String name, String body, String header,String footer) {

		Map<String, Attribute> attributes = new HashMap<String, Attribute>();

		attributes.put("header", new Attribute(header));
		
		attributes.put("body", new Attribute(IConstant.JSP_PACKAGE + "" + body + "" + IConstant.JSP_EXTANTION));
		
		attributes.put("footer", new Attribute(footer));
		tilesDefinitions.put(name, new Definition(name, IConstant.BASE_TEMPLATE, attributes));

	}

	public static void addDefinitions() {
			System.out.println("addDefinitions()");
	
		addDefaultLayoutDef(ConstantURL.VIEW_ADMIN_DASHBOARD, ConstantURL.VIEW_ADMIN_DASHBOARD, IConstant.RECRUITER_HEADER,IConstant.RECRUITER_FOOTER);
		addDefaultLayoutDef(ConstantURL.VIEW_CATEGORY_URL, ConstantURL.VIEW_CATEGORY_URL, IConstant.RECRUITER_HEADER,IConstant.RECRUITER_FOOTER);
		addDefaultLayoutDef(ConstantURL.ADD_QUESTION_URL, ConstantURL.ADD_QUESTION_URL, IConstant.RECRUITER_HEADER,IConstant.RECRUITER_FOOTER);


	}
	

	public static void addUserLayoutDef(String name, String body, String header,String footer) {
		System.out.println("addUserLayoutDef()");
		addDefaultLayoutDef(name, body, header ,footer);

	}

}