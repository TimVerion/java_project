package com.park.servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






import com.fasterxml.jackson.databind.ObjectMapper;
import com.park.dao.InputartDao;
import com.park.dao.TbClientDao;
import com.park.dao.impl.InputartDaoImpl;
import com.park.dao.impl.TbCarDaoImpl;
import com.park.dao.impl.TbClientDaoImpl;
import com.park.dao.impl.TbClientinfoDaoImpl;
import com.park.pojo.ClientShow;
import com.park.pojo.ResultInfo;
import com.park.pojo.TbCar;
import com.park.pojo.TbClient;
import com.park.pojo.TbClientinfo;
import com.park.service.IndexService;
import com.park.service.impl.IndexServiceImpl;
import com.park.util.BaseServlet;
@WebServlet("/client/*")
public class TbClientServlet extends BaseServlet {
	private IndexService service=new IndexServiceImpl();
	private TbClientDao dao=new TbClientDaoImpl();
	private InputartDao inputdao=new InputartDaoImpl();
	private static final long serialVersionUID = 1L;
	public void toregister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
        Map<String,Object> map = new HashMap<String,Object>();
        String inputtext = service.getInputText();
        String img=service.getInputImg();
        //随机图片待实现
        map.put("inputtext",inputtext);
        map.put("imgSrc",img );
        writeValue(map,response);
	}
	/**
	 * 在注册的时候查看用户名是否重复
	 */
	public void hasrepeat(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username=request.getParameter("username");
		response.setContentType("application/json;charset=utf-8");
		Map<String,Object> map = new HashMap<String,Object>();
		if(dao.selectByName(username)!=null){
			map.put("userExsit",true);
		}else{
			map.put("userExsit",false);
		}
		writeValue(map,response);
	}
	/**
	 * 验证码校验
	 */
	public void randomrepeat(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        String check = request.getParameter("yzm");
        HttpSession session = request.getSession();
        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER");//为了保证验证码只能使用一次
        //比较
        ResultInfo info = new ResultInfo();
        if(checkcode_server == null || !checkcode_server.equalsIgnoreCase(check)){
            //验证码错误
            info.setFlag(false);
            info.setErrorMsg("验证码错误");
        }else{
        	info.setFlag(true);
        }
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(info);
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(json);
        return;
	}
	 /**
     * 注册功能
     */
    public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
        //封装对象
        TbClient user=new TbClient();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        //调用service完成注册
        boolean flag =dao.insert(user);
        ResultInfo info = new ResultInfo();
        //响应结果
        if(flag){
            //注册成功
            info.setFlag(true);
            //将激活表生成
            TbClient client=dao.selectByName(user.getUsername());
            request.getSession().setAttribute("username", user.getUsername());
            dao.toActived(client.getId());
        }else{
            //注册失败
            info.setFlag(false);
            info.setErrorMsg("注册失败!");
        }
        //将info对象序列化为json
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(info);
        //将json数据写回客户端
        //设置content-type
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(json);
    }

    /**
     * 登录功能
     */
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取用户名和密码数据
        //封装User对象
    	 TbClient user=new TbClient();
    	 String username=request.getParameter("username");
    	 String password=request.getParameter("password");
         user.setUsername(username);
         user.setPassword(password);
         String style = request.getParameter("style");
        if("yes".equals(style)){
        	System.out.println("记住密码");
        	System.out.println(username+password);
        	Cookie c_username=new Cookie("c_username", URLEncoder.encode(username,"utf-8"));
        	Cookie c_password=new Cookie("c_password", URLEncoder.encode(password,"utf-8"));
        	c_username.setMaxAge(60*60*24*7);
        	c_password.setMaxAge(60*60*24*7);
        	response.addCookie(c_username);
        	response.addCookie(c_password);
        }
        //调用Service查询
        TbClient u  = dao.login(user);
        ResultInfo info = new ResultInfo();
        //4.判断用户对象是否为null
        if(u == null){
            //用户名密码或错误
            info.setFlag(false);
            info.setErrorMsg("用户名密码或错误");
        }
        //获得注册者的id
        //判断用户信息是否填写完整
        if(dao.isActived(u.getId())){
        	 request.getSession().setAttribute("user",u);//登录成功标记
             System.out.println("登录成功");
             //登录成功
             info.setFlag(true);
         	request.getSession().setAttribute("cs", inputdao.getCs(u.getId()));
        }else{
        	request.getSession().setAttribute("user",u);
            info.setFlag(false);
            info.setErrorMsg("激活");
        }
     /* 用于验证邮箱是否正确  
      * if(u != null && u.getIsactived().length==1){
        	request.getSession().setAttribute("user",u);
            info.setFlag(false);
            info.setErrorMsg("激活");
        }
        
        if(u != null&& u.getIsactived().length!=1){
            request.getSession().setAttribute("user",u);//登录成功标记
            System.out.println("登录成功");
            info.setFlag(true);
        }*/

        //响应数据
        ObjectMapper mapper = new ObjectMapper();

        response.setContentType("application/json;charset=utf-8");
        mapper.writeValue(response.getOutputStream(),info);
    }

    /**
     * 查询单个对象
     */
    public void findOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //从session中获取登录用户
        Object user = request.getSession().getAttribute("user");
       writeValue(user,response);
    }

    /**
     * 退出功能
     */
    public void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.销毁session
        request.getSession().invalidate();

        //2.跳转登录页面
        response.sendRedirect(request.getContextPath()+"/login.jsp");
    }

    /**
     * 激活功能
     */
    public void active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取激活码
        String code = request.getParameter("code");
        if(code != null){
            //2.调用service完成激活
            //UserService service = new UserServiceImpl();
            boolean flag = dao.active(code);

            //3.判断标记
            String msg = null;
            if(flag){
                //激活成功
                msg = "激活成功，请<a href='login.html'>登录</a>";
            }else{
                //激活失败
                msg = "激活失败，请联系管理员!";
            }
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write(msg);
        }
    }
    /**
     * 将已经激活的信息导入进去
     */
    public void writeActive(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		Map<String,Object> map = new HashMap<String,Object>();
		TbClient user=(TbClient) request.getSession().getAttribute("user");
		if(user!=null){
			ClientShow cs = inputdao.getCs(user.getId());
			TbClientinfo cf=new TbClientinfoDaoImpl().getCf(user.getId());
			TbCar car=new TbCarDaoImpl().getCar(user.getId());
			if(cs!=null){
				map.put("cs", cs);
			}
			if(cf!=null){
				map.put("cf", cf);
			}
			if(car!=null){
				map.put("car", car);
			}
		}
		writeValue(map,response);
	}
    /**
     * 将填写好基本信息的，导入进去
     */
    public void writeInfo(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	response.setContentType("application/json;charset=utf-8");
    	Map<String,Object> map = new HashMap<String,Object>();
    	TbClient user=(TbClient) request.getSession().getAttribute("user");
    	if(user!=null){
    		ClientShow cs = inputdao.getCs(user.getId());
    		if(cs!=null){
    			map.put("cs", cs);
    		}
    	}
    	writeValue(map,response);
    }
    /**
     * 待机功能
     */
    public void lockout(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	TbClient user=(TbClient) request.getSession().getAttribute("user");
    	//执行退出操作
    	request.getSession().invalidate();
    	String img = inputdao.getCs(user.getId()).getImg();
    	request.getSession().setAttribute("username",user.getUsername());
    	request.getSession().setAttribute("dataImg",img);
    	response.sendRedirect(request.getContextPath()+"/lockout.jsp");
    }
    /**
     * 待机功能需要获得username
     */
    public void getusername(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	response.setContentType("application/json;charset=utf-8");
    	String username = (String) request.getSession().getAttribute("username");
    	String img = (String) request.getSession().getAttribute("dataImg");
    	Map<String,Object> map = new HashMap<String,Object>();
    	if(username!=null){
    	map.put("username", username);
    	}
    	if(img!=null){
    		map.put("img", img);
    	}
    	writeValue(map,response);
    }
    /**
     * 记住密码
     */
    public void jzpwd(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	response.setContentType("application/json;charset=utf-8");
    	String username = (String) request.getSession().getAttribute("username");
    	String img = (String) request.getSession().getAttribute("dataImg");
    	Map<String,Object> map = new HashMap<String,Object>();
    	Cookie[] cookies=request.getCookies();
    	if(cookies!=null){
    		for(Cookie ck:cookies){
    			if("c_username".equals(ck.getName())){
    				String c_username=URLDecoder.decode(ck.getValue(),"utf-8");
    				map.put("name", c_username);
    			}
    			if("c_password".equals(ck.getName())){
    				String c_password=URLDecoder.decode(ck.getValue(),"utf-8");
    				map.put("pwd", c_password);
    			}
    		}
    	}
    	writeValue(map,response);
    }
    
}
