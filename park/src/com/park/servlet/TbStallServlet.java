package com.park.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbCarDao;
import com.park.dao.TbIntentDao;
import com.park.dao.impl.TbCarDaoImpl;
import com.park.dao.impl.TbIntentDaoImpl;
import com.park.pojo.PageBean;
import com.park.pojo.TbCar;
import com.park.pojo.TbClient;
import com.park.pojo.TbIntent;
import com.park.pojo.TbPark;
import com.park.pojo.TbStall;
import com.park.pojo.TbStallShow;
import com.park.service.TbStallService;
import com.park.service.impl.TbStallServiceImpl;
import com.park.util.BaseServlet;
@WebServlet("/stall/*")
public class TbStallServlet extends BaseServlet {
	 private static final long serialVersionUID = 1L;
	private TbStallService service = new TbStallServiceImpl();
	private TbCarDao dao=new TbCarDaoImpl();
	private TbIntentDao indao=new TbIntentDaoImpl();
	    /**
	     * 分页查询
	     */
	    public void pageQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        //1.接受参数
	        String currentPageStr = request.getParameter("currentPage");
	        String pageSizeStr = request.getParameter("pageSize");
	        String cidStr = request.getParameter("cid");
	        String querytype=request.getParameter("test");
	        int cid = 0;//类别id
	        //2.处理参数
	        if(cidStr != null && cidStr.length() > 0){
	            cid = Integer.parseInt(cidStr);
	        }
	        int currentPage = 0;//当前页码，如果不传递，则默认为第一页
	        if(currentPageStr != null && currentPageStr.length() > 0){
	            currentPage = Integer.parseInt(currentPageStr);
	        }else{
	            currentPage = 1;
	        }
	        
	        int pageSize = 0;//每页显示条数，如果不传递，默认每页显示5条记录
	        if(pageSizeStr != null && pageSizeStr.length() > 0){
	            pageSize = Integer.parseInt(pageSizeStr);
	        }else{
	            pageSize = 5;
	        }
	        //3. 调用service查询PageBean对象
	        PageBean<TbStallShow> pb=new PageBean<TbStallShow>();
	        if(querytype.equals("sall")){
	         pb= service.pageQuery(cid, currentPage, pageSize);
	        }else if(querytype.equals("yes")||querytype.equals("no")){
	        	pb=service.pageQueryIssue(cid, currentPage, pageSize, querytype);
	        }else{
	        	String[] split = querytype.split("&");
	        	//str[0]确定是否查询空车位
	        	//str[1]模糊查询关键词
	        	//str[2]查询的类型,默认为金额
	        	pb=service.pageQueryLike(cid, currentPage, pageSize, split[0],split[1],split[2]);
	        }
	        //4. 将pageBean对象序列化为json，返回
	        writeValue(pb,response);

	    }
	    /**
	     * 详细查询
	     */
	    public void queryDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	//1.接受参数
	    	String id = request.getParameter("id");
	    	TbStall ts=service.getStall(id);
	    	Map<String,Object> map = new HashMap<String,Object>();
	    	Integer cid=Integer.parseInt(id);
	    	TbPark tb=null;
	    	//这里使用假数据
	    	int sid=(Integer.parseInt(id))%11;
	    	tb=service.getPark(sid);
	    	map.put("tb", tb);
	    	map.put("stallid", id);
	    	map.put("stallsize", ts.getStallsize());
	    	map.put("stallprice", ts.getPredict());
	    	Integer isleisure = ts.getIsleisure();
	    	 String time = ts.getLeisuretime();
	    	 String[] split = time.split(" ");
	    	map.put("startdate",split[0]);
	    	map.put("starttime",split[1]);
	    	if(isleisure==0){
	    		map.put("isleisure","空闲" );
	    	}else{
	    		map.put("isleisure","使用中" );
	    	}
			writeValue(map,response);
	    }
	    /**
	     * 查询所有的车辆
	     */
	    public void queryCars(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	//1.接受参数
	    	TbClient user=(TbClient) request.getSession().getAttribute("user");
	    	Map<String,Object> map = new HashMap<String,Object>();
	    	Integer cid= user.getId();
	    	List<TbCar> cars = dao.selectByCid(cid);
	    	map.put("cars", cars);
	    	writeValue(map,response);
	    }
	    /**
	     *
	     */
	    public void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	//1.接受参数    	
	    	String st = request.getParameter("stime");
	    	String et = request.getParameter("etime");
	    	String old = request.getParameter("otime");
	    	String cid = request.getParameter("icid");
	    	String sid = request.getParameter("isid");
	    	//车库id
	    	String time0;
	    	String time1;
	    	String time2;
	    	//将ajax传输过来的给转换成date模式
	        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        long lt1 = Long.parseLong(st);
	        Date date1 = new Date(lt1);
	        time1 = simpleDateFormat.format(date1);
	        long lt2 = Long.parseLong(et);
	        Date date2 = new Date(lt2);
	        time2 = simpleDateFormat.format(date2);
	        long lt0=Long.parseLong(old);
	        time0=simpleDateFormat.format(lt0);
	        int predict=(int) ((lt1-lt0)/60000);
	        Float price=indao.getStallPriceByid(Integer.parseInt(sid));
	        TbIntent tbIntent = new TbIntent(Integer.parseInt(cid),Integer.parseInt(sid),predict, time1,time2,price,0);
	        System.out.println(tbIntent);
	    	indao.insert(tbIntent);
	    	Map<String,Object> map = new HashMap<String,Object>();
	    	writeValue(map,response);
	    }
}
