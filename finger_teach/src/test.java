

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

import com.sun.javafx.collections.MappingChange.Map;
import com.sun.mail.dsn.Report;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class test
 */
@WebServlet(urlPatterns = "/test", loadOnStartup=1)
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

    public ModelAndView Return(HttpServletRequest request, HttpServletResponse response, BigInteger value) {
    	ModelAndView modelView = new ModelAndView();
		//类似于 request.setAttribute()
		modelView.addObject("name","zhangsan");
		modelView.setViewName("/WEB-INF/index.jsp");
		return modelView;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        System.out.println("4444444444444");
        
        HashMap<String, String> mapp = new HashMap<String,String>();
        
        String allTerminalJSON = request.getParameter("informations");
        try {
        	//将字符串转换为JSONArray
            JSONArray array= JSONArray.fromObject(allTerminalJSON); 
            for(int i=0; i<array.size(); i++) {
            	//获得第一个array结果
                JSONObject o = (JSONObject) array.get(i); 
                String name = o.get("name").toString();//获得属性值 
                String value = o.get("value").toString();
                System.out.println(name + ":" + value);
                mapp.put(name, value);
            }
        } catch (Exception e) {
        	e.printStackTrace();
        }
        
        SimHash hash2 = new SimHash(mapp, 128);
    	System.out.println(hash2.strSimHash);
    	request.setAttribute("name", hash2.strSimHash);
    	
    	JsonUtil json = new JsonUtil();
    	response.getWriter().println(json.object2json(hash2.strSimHash));
//	    response.getWriter().print("成功");
//    	Return(request, response, hash2.strSimHash);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("22222222222");
		doGet(request, response);
	}

}
