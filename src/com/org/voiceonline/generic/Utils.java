package com.org.voiceonline.generic;

public class Utils {

	public static String getString(Object param) {
		return param == null ? "" : param.toString();

	}

	public static String[] getStringArray(Object param) {
		return param == null ? new String[0] : (String[]) param;

	}

	public static String convertArrayToString(Object param) {
		String ids = "";
		if (param != null) {
			for (String paramValue : (String[]) param) {
				ids += paramValue + ",";
			}
			ids = ids.replaceAll(",$", "");
		}

		return ids;
	}
}
