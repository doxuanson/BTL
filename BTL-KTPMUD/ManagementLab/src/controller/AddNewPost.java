package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GettingBaiViet;
import model.GettingTV_BV;
import model.TV_BV;
import model.ThanhVien;
import ultilities.StringToDate;

/**
 * Servlet implementation class AddNewPost
 */
// @WebServlet("/AddNewPost")
public class AddNewPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNewPost() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		String command = request.getParameter("command");
		if (command.equals("Save")) {

			GettingBaiViet gettingBaiViet = new GettingBaiViet();
			GettingTV_BV gettingTV_BV = new GettingTV_BV();
			Date date = new Date();

			String tieuDe = request.getParameter("tieude");
			String noiDung = request.getParameter("noidung");
			String ngaydang = StringToDate.dateToString2(date);
			if (thanhvien != null) {
				try {
					String url = "";
					if (tieuDe.equals("") || noiDung.equals("")) {
						request.setAttribute("message", "Tiêu đề hoặc nội dung trống!");
						url = "News-AddBaiViet";
					} else {
						String mabv = gettingBaiViet.addNewPost(tieuDe, noiDung, ngaydang);
						String matv = thanhvien.getMaTV();
						gettingTV_BV.insert(mabv, matv);

						url = "News-Baiviet?mabv=" + mabv;
					}
					RequestDispatcher dispathcher = request.getRequestDispatcher(url);
					dispathcher.forward(request, response);

				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				RequestDispatcher dispathcher = request.getRequestDispatcher("ManagementLogin-login");
				dispathcher.forward(request, response);
			}
		}

		else if (command.equals("Edit")) {
			String mabv = request.getParameter("mabv");
			GettingBaiViet gettingBaiViet = new GettingBaiViet();
			GettingTV_BV gettingTV_BV = new GettingTV_BV();
			Date date = new Date();

			String tieuDe = request.getParameter("tieude");
			String noiDung = request.getParameter("noidung");
			String ngaysua = StringToDate.dateToString2(date);
			String url = "";
			Boolean check = false;
			if (thanhvien != null) {
				try {

					for (TV_BV ds : gettingTV_BV.getListTV_BV(mabv)) {
						String matvcheck = ds.getMaTV();
						if ((thanhvien.getMaTV()).equals(matvcheck)) {
							check = true;

							break;
						}
					}
					if (check) {
						if (tieuDe.equals("") || noiDung.equals("")) {
							request.setAttribute("message", "Tiêu đề hoặc nội dung trống!");
							url = "/ManagementLab/News-EditBaiViet";
						} else {
							gettingBaiViet.editPost(mabv, tieuDe, noiDung, ngaysua);

							url = "/ManagementLab/News-Baiviet?mabv=" + mabv;
						}

					}

					else if (url.equals("")) {
						url = "/ManagementLab/ManagementLogin-login";
					}
					response.sendRedirect(url);

				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			} else {
				RequestDispatcher dispathcher = request.getRequestDispatcher("ManagementLogin-login");
				dispathcher.forward(request, response);
			}
		}

		else if (command.equals("Delete")) {
			String mabv = request.getParameter("mabv");
			GettingBaiViet gettingBaiViet = new GettingBaiViet();
			GettingTV_BV gettingTV_BV = new GettingTV_BV();
			String url = "";
			Boolean check = false;

			try {
				if (thanhvien != null) {

					for (TV_BV ds : gettingTV_BV.getListTV_BV(mabv)) {
						String matvcheck = ds.getMaTV();
						if ((thanhvien.getMaTV()).equals(matvcheck)) {
							check = true;

							break;
						}
					}

					if (check) {
						gettingTV_BV.deleteTV_BV(mabv);
						gettingBaiViet.deletePost(mabv);
						request.setAttribute("message", "Post is deleted!");
						url = "News";
					}
				} else {
					url = "ManagementLogin-login";
				}

				RequestDispatcher dispathcher = request.getRequestDispatcher(url);
				dispathcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

		}

	}

}
