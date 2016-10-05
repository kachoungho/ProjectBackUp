package team2.miniproject.action.stuSubmit;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuSubmitFileUpload implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String result = (String)session.getAttribute("result");

		int check = 0;
		
		Team2DAO dao = Team2DAO.getInstance();
		
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			// 업로드 될 디렉토리의 절대경로 가져오기
			String path = request.getServletContext().getRealPath("/upload");
			// 파일 업로드 처리
			MultipartRequest multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			// description 파라미터 값 찾아오기
			String description = multi.getParameter("description");
			String submit_week = multi.getParameter("submit_week");
			String sub_code = multi.getParameter("sub_code");
			String emp_num = multi.getParameter("emp_num");
			String submit_title = multi.getParameter("submit_title");
			String submit_content = multi.getParameter("submit_content");
			// 파일이름 찾아오기
			Enumeration<String> files = multi.getFileNames();
			// 여러개 일때는 반복문 이용
			String file = files.nextElement(); // 하나일때 nextElement
			String filename = multi.getFilesystemName(file);
			// 파일의 크기 찾아오기
			File f = new File(path + "\\" + filename);
			int filesize = (int) f.length();

			// Dao 메소드의 파라미터 만들기 -Map으로 묶기
			Map<String, Object> Map = new HashMap<String, Object>();
			Map.put("filename", filename);
			Map.put("filesize", filesize);
			Map.put("description", description);
			Map.put("stu_num", mem_num);
			
			Map.put("submit_week", submit_week);
			Map.put("sub_code", sub_code);
			Map.put("emp_num", emp_num);
			Map.put("submit_title", submit_title);
			Map.put("submit_content", submit_content);
			
			// Dao메소드 호출
			check = dao.insertPds(Map);
			
			
		} catch (Exception e) {
			System.out.println("업로드 실패:" + e.getMessage());
		}
		
		request.setAttribute("check", check);
		return "/jsp/stuSubmit/stuSubmitUpload.jsp";
	}

}

