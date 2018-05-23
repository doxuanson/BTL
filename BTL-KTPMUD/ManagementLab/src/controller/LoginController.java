package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.sql.SQLException;
import ultilities.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.GettingThanhVien;
import model.ThanhVien;

/**
 * Servlet implementation class LoginController
 */
// @WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
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

		String command = request.getParameter("command");

		if (command.equals("login")) {
			HttpSession session = request.getSession();
			String url = "";

			try {
				GettingThanhVien gettingThanhVien = new GettingThanhVien();
				ThanhVien thanhvien = new ThanhVien();

				String username = request.getParameter("username");
				String password = request.getParameter("password");
				thanhvien = gettingThanhVien.login(username, password);

				if (username.equals("") || password.equals("")) {
					request.setAttribute("Error", "Username or password is empty!");
					url = "/ManagementLogin-login";
				} else if (thanhvien != null) {
					session.setAttribute("thanhvien", thanhvien);
					url = "/Home";
				} else {
					request.setAttribute("Error", "Error username or password");
					url = "/ManagementLogin-login";
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispathcher = request.getRequestDispatcher(url);
			dispathcher.forward(request, response);
		}

		else if (command.equals("update")) {
			HttpSession session = request.getSession();
			ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
			StringToDate stringtodate = new StringToDate();

			String url = "";

			try {

				if (thanhvien != null) {
					GettingThanhVien gettingThanhVien = new GettingThanhVien();
					String hoten = request.getParameter("hoten");
					String matv = request.getParameter("matv");
					String email = request.getParameter("email");
					String ngaysinh = stringtodate.stringToDate(request.getParameter("ngaysinh"));

					String lop = request.getParameter("lop");
					String khoa = request.getParameter("khoa");
					String que = request.getParameter("que");
					String dienthoai = request.getParameter("dienthoai");
					String vien = request.getParameter("vien");
					String trangthai = request.getParameter("trangthai");
					String nhom = request.getParameter("nhom");
					ThanhVien thanhvienedit = new ThanhVien();

					thanhvienedit = gettingThanhVien.update(matv, hoten, email, ngaysinh, lop, khoa, que, dienthoai,
							vien, trangthai, nhom);
					session.removeAttribute("thanhvien");
					session.setAttribute("thanhvien", thanhvienedit);

					url = "/AccountManager-Profile";

				}

				else {
					request.setAttribute("Error", "Error username or password");
					url = "/ManagementLogin-login";
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispathcher = request.getRequestDispatcher(url);
			dispathcher.forward(request, response);
		} else if (command.equals("changepassword")) {
			HttpSession session = request.getSession();
			ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");

			String url = "";

			try {

				if (thanhvien != null) {
					GettingThanhVien gettingThanhVien = new GettingThanhVien();
					String matv = request.getParameter("matv");
					String currentpassword = request.getParameter("currentpassword");
					String newpassword = request.getParameter("newpassword");
					String newpasswordcheck = request.getParameter("newpasswordcheck");
					if (currentpassword.equals("") || newpassword.equals("") || newpasswordcheck.equals("")) {
						request.setAttribute("message",
								"Current password, New password or Confirm new password is empty!");
						url = "/AccountManager-ChangePassword";
					} else if (currentpassword.equals(thanhvien.getMK()) == false) {
						request.setAttribute("message", "Current password is false!");
						url = "/AccountManager-ChangePassword";
					} else if (newpassword.equals(newpasswordcheck) == false) {
						request.setAttribute("message", "New password and Confirm new password is not same!");
						url = "/AccountManager-ChangePassword";
					} else {

						ThanhVien thanhvienedit = new ThanhVien();

						thanhvienedit = gettingThanhVien.changepassword(matv, newpassword);
						session.removeAttribute("thanhvien");
						session.setAttribute("thanhvien", thanhvienedit);
						request.setAttribute("message", "Change password is successful!");
						url = "/AccountManager-ChangePassword";
					}
				}

				else {
					request.setAttribute("Error", "Mời bạn đăng nhập!");
					url = "/ManagementLogin-login";
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispathcher = request.getRequestDispatcher(url);
			dispathcher.forward(request, response);
		}

		else if (command.equals("createaccount")) {
			HttpSession session = request.getSession();

			ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
			GettingThanhVien gettingthanhvien = new GettingThanhVien();

			String url = "";

			try {
				if (gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
					GettingThanhVien gettingThanhVien = new GettingThanhVien();
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					String macv = request.getParameter("macv");
					if (username.equals("") || password.equals("")) {
						request.setAttribute("message", "Username or password is empty!");
						url = "/AccountManager-CreateAccount";
					}

					else if (gettingthanhvien.authenticationUsername(username)) {
						request.setAttribute("message", "Username is existed!");
						url = "/AccountManager-CreateAccount";
					} else {
						Date date = new Date();
						String ngayvaolab = StringToDate.dateToString2(date);

						int row = gettingThanhVien.createAccount(username, password, macv, ngayvaolab);
						request.setAttribute("message", "Account " + username + " is created successful !");
						url = "/AccountManager-CreateAccount";
					}

				}

				else {
					request.setAttribute("Error", "Please login to the admin user account!");
					url = "/ManagementLogin-login";
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispathcher = request.getRequestDispatcher(url);
			dispathcher.forward(request, response);

		}

		else if (command.equals("deleteaccount"))

		{
			HttpSession session = request.getSession();

			ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
			GettingThanhVien gettingthanhvien = new GettingThanhVien();
			String url = "";

			try {
				if (gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {

					String username = request.getParameter("username");

					if (username.equals("")) {
						request.setAttribute("message", "Username or is empty!");
						url = "/AccountManager-DeleteAccount";
					} else if (gettingthanhvien.isGiangVien(username)) {
						request.setAttribute("message", "Username is admin. You do not have permission to delete!");
						url = "/AccountManager-DeleteAccount";
					}

					else if (!gettingthanhvien.authenticationUsername(username)) {
						request.setAttribute("message", "Username is not existed!");
						url = "/AccountManager-DeleteAccount";
					}

					else {
						int row = gettingthanhvien.deleteAccount(username);
						request.setAttribute("message", "Account " + username + " is deleted successful !");
						url = "/AccountManager-DeleteAccount";
					}
				} else {
					request.setAttribute("Error", "Please login to the admin user account!");
					url = "/ManagementLogin-login";
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispathcher = request.getRequestDispatcher(url);
			dispathcher.forward(request, response);
		}
	}

}
