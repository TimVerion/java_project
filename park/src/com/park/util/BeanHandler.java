package com.park.util;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class BeanHandler<T> {
	Class<T> classtype;
	BeanHandler(Class<T> classtype){
		this.classtype=classtype;
	}
	public List<T> handle(ResultSet rs){
		List<T> list=new ArrayList<>();
		try {
			while(rs.next()){
				T obj = classtype.newInstance();
				list.add(obj);
				BeanInfo beanInfo = Introspector.getBeanInfo(classtype, Object.class);
				PropertyDescriptor[] pds = beanInfo.getPropertyDescriptors();
				for (PropertyDescriptor ps : pds) {
					String name = ps.getName();
					Method method=ps.getWriteMethod();
					if(name.endsWith("time")){
						String str =rs.getString(name);
						method.invoke(obj, str);
						continue;
					}
					Object object = rs.getObject(name);
					if(object==null){
						continue;
					}
					method.invoke(obj, object);
				}
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
