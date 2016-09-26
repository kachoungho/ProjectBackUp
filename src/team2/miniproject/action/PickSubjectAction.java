package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.PickSubjectVO;
import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class PickSubjectAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		String result = request.getParameter("result");
		String grade = request.getParameter("grade");
		String major_sel = request.getParameter("major_sel");
		String check = request.getParameter("check");		//신청할때 과목 코드값
		String check2 = request.getParameter("check2");	//삭제할때 과목 코드값

		ArrayList<SubjectVO> list = null;
		ArrayList<PickSubjectVO> list2 = null;
		PickSubjectVO Pickvo = new PickSubjectVO();
		
		ArrayList picklist = null;
		String rt = null;
		String pick = null;

		System.out.println("\n\nmem_num" + mem_num);
		System.out.println("mem_name" + mem_name);
		System.out.println("result" + result);
		System.out.println("grade" + grade);
		System.out.println("major_sel" + major_sel + "\n\n");

		Team2DAO dao = Team2DAO.getInstance();
		
		if(check2 != null){
			dao.PickDelete(check2);
		}
		
		// SubjectVO vo = new SubjectVO();
		if (grade.equals("1")) {
			if (major_sel.equals("default")) {
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("com")) {
				pick = "COM1%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("human")) {
				pick = "HUM1%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("vision")) {
				pick = "DES1%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			} else if (major_sel.equals("kyo")) {
				pick = "KYO1%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			}

		} else if (grade.equals("2")) {
			if (major_sel.equals("default")) {
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("com")) {
				pick = "COM2%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("human")) {
				pick = "HUM2%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("vision")) {
				pick = "DES2%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			} else if (major_sel.equals("kyo")) {
				pick = "KYO2%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			}

		} else if (grade.equals("3")) {
			if (major_sel.equals("default")) {
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("com")) {
				pick = "COM3%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("human")) {
				pick = "HUM3%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("vision")) {
				pick = "DES3%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			}

		} else if (grade.equals("4")) {
			if (major_sel.equals("default")) {
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("com")) {
				pick = "COM4%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("human")) {
				pick = "HUM4%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";

			} else if (major_sel.equals("vision")) {
				pick = "DES4%";
				list = dao.getSubjectData(pick);
				request.setAttribute("list", list);
				if (check != null) {
					dao.InsertPickData(check, mem_num);
				}
				rt = "/jsp/pickSubjectForm.jsp";
			}

		}
		
		list2 = dao.PickData(Pickvo, mem_num);
		
		if(list2 != null){
			request.setAttribute("picklist", list2);
		}

		request.setAttribute("grade", grade);
		request.setAttribute("major_sel", major_sel);
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mem_name", mem_name);
		request.setAttribute("result", result);
		return rt;
	}

}
