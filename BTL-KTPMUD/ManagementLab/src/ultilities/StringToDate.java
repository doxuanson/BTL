package ultilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringToDate {

	public static String stringToDate(String datestring) {
		SimpleDateFormat formatter1 = new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = formatter1.parse(datestring);
			String datestring2 = formatter2.format(date);

			return datestring2;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String dateToString(Date date) {
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		String datestring = formatter.format(date);
		return datestring;

	}

	public static String dateToString2(Date date) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String datestring = formatter.format(date);
		return datestring;

	}
}