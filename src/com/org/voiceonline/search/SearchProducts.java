package com.org.voiceonline.search;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.org.voiceonline.generic.ConnectionsUtil;
import com.org.voiceonline.generic.Constants;

public class SearchProducts {

	public static void main(String args[]) {

		SearchProducts searchProducts = new SearchProducts();
		LinkedHashMap<String, Object> productList = searchProducts.search("shoe", null);
		for (String key : productList.keySet()) {
			productList.get(key);
		}
	}

	public LinkedHashMap<String, Object> search(String searchText, String prdId) {

		LinkedHashMap<String, Object> mainProductMap = new LinkedHashMap<String, Object>();
		ConnectionsUtil connectionsUtil = new ConnectionsUtil();
		Connection conn = connectionsUtil.getConnection();

		try {
			LinkedHashMap<String, String> attributeMap = new LinkedHashMap<String, String>();

			searchText = searchText == null ? null : searchText.replaceAll("[ ]+|^|$", "%");

			String query = "select pm.product_id, pm.product_name,pm.description, category_name, attribute_name, attrib_value from "
					+ "product_master pm ";

			if (searchText != null && !searchText.equals("")) {
				query += "inner join (select * from product_master where product_name like '" + searchText
						+ "') p on pm.product_id  = p.product_id ";
			}

			query += "inner join category_product_map cpm on cpm.product_id = pm.product_id ";
			if (prdId != null && !prdId.equals("")) {
				query += " and pm.product_id in(" + prdId + ")";
			}

			query += "inner join category_master cm on cpm.category_id = cm.category_id "
					+ "inner join category_attribute_map cam on cm.category_id = cam.category_id "
					+ "inner join attribute_master attr on cam.attribute_id = attr.attribute_id "
					+ "inner join category_product_attrib_map cpam on "
					+ "cpam.category_product_map_id = cpm.category_product_map_id and cpam.category_attrib_map_id = cam.category_attribute_map_id "
					+ "order by cm.category_id, pm.product_id;";
			// System.out.println("query==>" + query);

			Statement stmt = conn.createStatement();

			ResultSet dataRS = stmt.executeQuery(query);

			String productId = "", existingProductId = "";

			LinkedHashMap<String, Object> productInfoMap = new LinkedHashMap<String, Object>();

			Integer count = 0;

			while (dataRS.next()) {

				productId = dataRS.getString("product_id");

				if (!existingProductId.equals(productId) && !existingProductId.equals("")) {
					productInfoMap.put(Constants.ATTRIB_MAP, attributeMap);
					mainProductMap.put(existingProductId, productInfoMap);
					attributeMap = new LinkedHashMap<>();
					productInfoMap = new LinkedHashMap<>();
					count = 0;
				}

				if (count == 0) {

					productInfoMap.put(Constants.CATEGORY_NAME, dataRS.getString("category_name"));
					productInfoMap.put(Constants.PRODUCT_NAME, dataRS.getString("product_name"));
					productInfoMap.put(Constants.PRODUCT_DESC, dataRS.getString("description"));
				}

				attributeMap.put(dataRS.getString("attribute_name"), dataRS.getString("attrib_value"));
				existingProductId = productId;

				count++;
			}
			if (!productId.equals("")) {
				productInfoMap.put(Constants.ATTRIB_MAP, attributeMap);
				mainProductMap.put(existingProductId, productInfoMap);
			}
			connectionsUtil.closeConnection(stmt);

			// System.out.println("mainProductMap===>" +mainProductMap);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return mainProductMap;
	}

	public List<Product> searchList(String searchText, String prdId) {

		List<Product> productList = new ArrayList<Product>();
		ConnectionsUtil connectionsUtil = new ConnectionsUtil();
		Connection conn = connectionsUtil.getConnection();

		try {

			Product product = new Product();
			LinkedHashMap<String, String> attributeMap = new LinkedHashMap<String, String>();

			searchText = searchText == null ? null : searchText.replaceAll("[ ]+|^|$", "%");

			String query = "select pm.product_id, pm.product_name,pm.description, category_name, attribute_name, attrib_value from "
					+ "product_master pm ";

			if (searchText != null && !searchText.equals("")) {
				query += "inner join (select * from product_master where product_name like '" + searchText
						+ "') p on pm.product_id  = p.product_id ";
			}

			query += "inner join category_product_map cpm on cpm.product_id = pm.product_id ";
			if (prdId != null && !prdId.equals("")) {
				query += " and pm.product_id in(" + prdId + ")";
			}

			query += "inner join category_master cm on cpm.category_id = cm.category_id "
					+ "inner join category_attribute_map cam on cm.category_id = cam.category_id "
					+ "inner join attribute_master attr on cam.attribute_id = attr.attribute_id "
					+ "inner join category_product_attrib_map cpam on "
					+ "cpam.category_product_map_id = cpm.category_product_map_id and cpam.category_attrib_map_id = cam.category_attribute_map_id "
					+ "order by cm.category_id, pm.product_id;";
			// System.out.println("query==>" + query);

			Statement stmt = conn.createStatement();

			ResultSet dataRS = stmt.executeQuery(query);

			String productId = "", existingProductId = "";


			Integer count = 0;

			while (dataRS.next()) {
				//product = new Product();
				productId = dataRS.getString("product_id");

				if (!existingProductId.equals(productId) && !existingProductId.equals("")) {
					product.setAttributes(attributeMap);
					productList.add(product);
					product = new Product();
					attributeMap = new LinkedHashMap<>();
				
					count = 0;
				}

				if (count == 0) {
					product.setId(productId);
					product.setName(dataRS.getString("product_name"));
					product.setCategory(dataRS.getString("category_name"));
					product.setDesc(dataRS.getString("description"));
					/*
					 * productInfoMap.put(Constants.CATEGORY_NAME,
					 * dataRS.getString("category_name"));
					 * productInfoMap.put(Constants.PRODUCT_NAME,
					 * dataRS.getString("product_name"));
					 * productInfoMap.put(Constants.PRODUCT_DESC,
					 * dataRS.getString("description"));
					 */

				}

				attributeMap.put(dataRS.getString("attribute_name"), dataRS.getString("attrib_value"));

				existingProductId = productId;

				count++;
			}
			if (!productId.equals("")) {
				product.setAttributes(attributeMap);
				productList.add(product);
			}
			connectionsUtil.closeConnection(stmt);

			// System.out.println("mainProductMap===>" +mainProductMap);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return productList;
	}

}
