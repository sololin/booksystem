package com.bjsxt.book.util;

import java.text.SimpleDateFormat;

public class DateFormatUtil {
	public static String formatDate(java.util.Date date){  
	    return new SimpleDateFormat("yyyy/MM/dd HH:MM:SS").format(date);  
    }  
}
