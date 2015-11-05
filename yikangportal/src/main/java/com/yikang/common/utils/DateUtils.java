package com.yikang.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yikang.protal.entity.CustumerTimeQuantum;

/**
 * 
 * @author liushuaic
 * @date 2015/07/29 15:24
 * @desc 日期工具类
 * **/
public class DateUtils {
	
	
	
	/**
	 * @param dataStr 2015-06-25
	 * @return  毫秒
	 * @author liushuaic
	 * @throws ParseException 
	 * @date 2015/07/29 15:42
	 * ***/
	public static Long getＭillisecond(String dateStr) throws ParseException{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(dateStr).getTime();
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/10/05 15:03
	 * 获取当前时间的
	 * @return 2015-10-10
	 * */
	public static String getCurrentDateStr(){
		SimpleDateFormat sdfDate=new SimpleDateFormat("yyyy-MM-dd");
		Calendar rightNow = Calendar.getInstance();
		String dateStrNow=sdfDate.format(rightNow.getTime());
		return dateStrNow;
	}
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/05 10:57
	 * @desc 获取当前可选的时间
	 * 
	 * */
	public static List<CustumerTimeQuantum> getCanSelectedDateTime(){
		
		List<CustumerTimeQuantum> custumerTImeQuantums=new ArrayList<CustumerTimeQuantum>();
		
		SimpleDateFormat sdfWeek=new SimpleDateFormat("E");
		SimpleDateFormat sdfDate=new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar rightNow = Calendar.getInstance();
		String weekStrNow=sdfWeek.format(rightNow.getTime());
		String dateStrNow=sdfDate.format(rightNow.getTime());
		
		rightNow.add(Calendar.DAY_OF_YEAR, -1);
		String weekStrBefor=sdfWeek.format(rightNow.getTime());
		String dateStrBefor=sdfDate.format(rightNow.getTime());
		
		rightNow.add(Calendar.DAY_OF_YEAR, 2);
		String weekStrAfter=sdfWeek.format(rightNow.getTime());
		String dateStrAfter=sdfDate.format(rightNow.getTime());
		
		
		CustumerTimeQuantum custumerTimeQuantumBefore=new CustumerTimeQuantum();
		custumerTimeQuantumBefore.setWeekStr(weekStrBefor);
		custumerTimeQuantumBefore.setDateStr(dateStrBefor);
		custumerTImeQuantums.add(custumerTimeQuantumBefore);
		
		CustumerTimeQuantum custumerTimeQuantum=new CustumerTimeQuantum();
		custumerTimeQuantum.setWeekStr(weekStrNow);
		custumerTimeQuantum.setDateStr(dateStrNow);
		custumerTImeQuantums.add(custumerTimeQuantum);
		
		CustumerTimeQuantum custumerTimeQuantumAfter=new CustumerTimeQuantum();
		custumerTimeQuantumAfter.setWeekStr(weekStrAfter);
		custumerTimeQuantumAfter.setDateStr(dateStrAfter);
		custumerTImeQuantums.add(custumerTimeQuantumAfter);
		
		
		return custumerTImeQuantums;
	}
	
	
	
	
	public static void main(String[] args) throws ParseException {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf3=new SimpleDateFormat("今天是E");
//		
//		Date d=sdf.parse("2015-07-15");
//		System.out.println(d.getTime());
//		System.out.println(sdf2.format(sdf.parse("2015-07-15")));
//		System.out.println(sdf3.format(d));
		
		
		Calendar rightNow = Calendar.getInstance();
		System.out.println(sdf3.format(rightNow.getTime()));
		rightNow.add(Calendar.DAY_OF_YEAR, -1);
		System.out.println(sdf3.format(rightNow.getTime()));
		rightNow.add(Calendar.DAY_OF_YEAR, 2);
		System.out.println(sdf3.format(rightNow.getTime()));
	}

}
