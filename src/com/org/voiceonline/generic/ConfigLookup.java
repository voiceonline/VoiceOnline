package com.org.voiceonline.generic;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigLookup {

	public static Properties prop;

	public static String getValue(String key) {

		InputStream inputStream;
		String result = "";

		try {

			if (prop != null && prop.containsKey(key)) {
				return prop.getProperty(key);
			} else {

				prop = new Properties();
				String propFileName = "config.properties";

				inputStream = Thread.currentThread().getContextClassLoader()
						.getResourceAsStream(propFileName);

				if (inputStream != null) {
					prop.load(inputStream);
				} else {
					throw new FileNotFoundException("property file '"
							+ propFileName + "' not found in the classpath");
				}

				inputStream.close();
				result = prop.getProperty(key, "");
			}

		} catch (Exception e) {
			System.out.println("Exception: " + e);
		}
		return result;
	}
}
