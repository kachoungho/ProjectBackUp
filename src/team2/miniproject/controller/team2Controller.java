package team2.miniproject.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.action.CommandAction;

public class team2Controller extends HttpServlet {
	
	private Map commandMap = new HashMap();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	@Override
	public void init(ServletConfig config) throws ServletException { // 珥덇린�솕瑜� �쐞�븳 method 
		String props = config.getInitParameter("propertyConfigProject");	//web.xml �꽕�젙 �뙆�씪 �씫�뼱�뱾�엫
		
		Properties pr = new Properties();
		FileInputStream f = null;
		
		try {
			f = new FileInputStream(props);
			pr.load(f);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( f != null) 	try { f.close(); } catch (Exception e) { e.printStackTrace(); }
		} // try~catch close
		
		Iterator keyIter = pr.keySet().iterator();
		
		while(keyIter.hasNext()){
			String command = (String)keyIter.next();
			
			String className = pr.getProperty(command);	//value : edu.kosta.boardAction.WriteFormAction
			
			try {
				Class commandClass  = Class.forName(className);		//String ���엯�씠���뜕 �겢�옒�뒪�씠由꾩쓣
																					//Class.forName(className);	�쓣 �넻�빐
																					//Class�씠由꾩쑝濡� 蹂�寃�
				Object commandInstance = commandClass.newInstance();		//媛앹껜 �깮�꽦
				
				commandMap.put(command, commandInstance);		//commandMap.put(�궎媛�, 紐낅졊泥섎━媛�)
			} catch (Exception e) {
				e.printStackTrace();
			}
		}// while close
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandAction ca = null;
		
		try {
			String command = request.getRequestURI();
			System.out.println("command : " + command);	//		/Day52_boardMVC/writeForm.do
			System.out.println("request.getContextPath() : " + request.getContextPath());	//	/Day52_boardMVC
			if(command.indexOf(request.getContextPath()) == 0 ){
				command = command.substring(request.getContextPath().length() + 1);
				System.out.println("if command : " + command ); //if command : writeForm.do
			}// if close
			
			ca = (CommandAction)commandMap.get(command);
			System.out.println("ca : " + ca);
			view = ca.process(request, response);
			System.out.println("view : " + view + "\n\n");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("CONTENT", view);
		
		if(view.equals("/jsp/logincheck.jsp")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/logincheck.jsp");
			dispatcher.forward(request, response);
		} else if(view.equals("/jsp/loginSuc.jsp")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/loginSuc.jsp");
			dispatcher.forward(request, response);
		}  else if(view.equals("/jsp/main.jsp")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/main.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/template/template.jsp");
			//RequestDispatcher dispatcher = request.getRequestDispatcher("/template.jsp");
			dispatcher.forward(request, response);
		}
		
	}
}
