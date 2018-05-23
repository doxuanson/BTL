package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.GettingDuAn;
import model.GettingDuAn_TV;
import model.GettingThanhVien;
import model.ThanhVien;

/**
 * Servlet implementation class HandleProject
 */
// @WebServlet("/HandleProject")
public class HandleProject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HandleProject() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingThanhVien gettingthanhvien = new GettingThanhVien();
		GettingDuAn gettingduan = new GettingDuAn();
		GettingDuAn_TV gettingduan_tv = new GettingDuAn_TV();
		String command = request.getParameter("command");

		// if (command.equals("Create_Project") &&
		// gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
		// String project_name = request.getParameter("project_name");
		// String doitac = request.getParameter("doitac");
		// String mota = request.getParameter("mota");
		// String trangthai = request.getParameter("trangthai");
		// String manhom1 = request.getParameter("5G");
		// String manhom2 = request.getParameter("IoT");
		// String manhom3 = request.getParameter("NV");
		// String manhom4 = request.getParameter("OPS");
		// String manhom5 = request.getParameter("QoS");
		// String manhom6 = request.getParameter("SE");
		//
		// String url = "";
		// if (project_name.equals("") || doitac.equals("") || mota.equals("")
		// || trangthai.equals("")) {
		// request.setAttribute("message", "Tên Project, Đối tác, Mô tả hoặc
		// Trạng thái dự án trống!");
		// url = "Projects-CreateDuAn";
		// } else {
		//
		// try {
		// int mada = gettingduan.createDuAn(project_name, doitac, mota, maql,
		// trangthai);
		// if (manhom1 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom1);
		// }
		// if (manhom2 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom2);
		// }
		// if (manhom3 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom3);
		// }
		// if (manhom4 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom4);
		// }
		// if (manhom5 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom5);
		// }
		// if (manhom6 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom6);
		// }
		//
		// } catch (ClassNotFoundException | SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// url = "Projects-Projects";
		// }
		// RequestDispatcher dispathcher = request.getRequestDispatcher(url);
		// dispathcher.forward(request, response);
		// }

		try {
			if (command.equals("Delete") && gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
				String mada = request.getParameter("mada");
				try {
					gettingduan_tv.deleteDuAn_TV(mada);
					gettingduan.deleteDuAn(mada);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				RequestDispatcher dispathcher = request.getRequestDispatcher("Projects-Projects");
				dispathcher.forward(request, response);

			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// else if (command.equals("Edit_Project") && quanly != null) {
		// String project_name = request.getParameter("project_name");
		// String doitac = request.getParameter("doitac");
		// String mota = request.getParameter("mota");
		// String trangthai = request.getParameter("trangthai");
		// String maql = quanly.getMaQL();
		// String manhom1 = request.getParameter("5G");
		// String manhom2 = request.getParameter("IoT");
		// String manhom3 = request.getParameter("NV");
		// String manhom4 = request.getParameter("OPS");
		// String manhom5 = request.getParameter("QoS");
		// String manhom6 = request.getParameter("SE");
		//
		// String url = "";
		// if (project_name.equals("") || doitac.equals("") || mota.equals("")
		// || trangthai.equals("")) {
		// request.setAttribute("message", "Tên Project, Đối tác, Mô tả hoặc
		// Trạng thái dự án trống!");
		// url = "Projects-CreateDuAn";
		// } else {
		//
		// try {
		// String mada_old = request.getParameter("mada");
		// gettingduan.deleteDuAn(mada_old);
		// int mada = gettingduan.createDuAn(project_name, doitac, mota, maql,
		// trangthai);
		// url = "Projects-Project_Detail?mada=" + mada;
		// if (manhom1 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom1);
		// }
		// if (manhom2 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom2);
		// }
		// if (manhom3 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom3);
		// }
		// if (manhom4 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom4);
		// }
		// if (manhom5 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom5);
		// }
		// if (manhom6 != null) {
		// gettingduan_nhom.add_DuAn_Nhom(mada, manhom6);
		// }
		//
		// } catch (ClassNotFoundException | SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		//
		// }
		// RequestDispatcher dispathcher = request.getRequestDispatcher(url);
		// dispathcher.forward(request, response);
		// }

	}

}
