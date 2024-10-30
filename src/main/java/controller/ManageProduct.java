 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.HoaDAO;
import dao.LoaiDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Hoa;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ManageProduct", urlPatterns = {"/ManageProduct","/quan-tri"})
@MultipartConfig
public class ManageProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        HoaDAO hoaDAO = new HoaDAO();
        LoaiDAO loaiDAO= new LoaiDAO();
        
        String action = "LIST";
        if (request.getParameter("action") != null) {
            action = request.getParameter("action");
        }

        switch (action) {
            case "LIST":
                //tra ve giao dien lien ket danh sach san pham quan tri
                request.setAttribute("dsHoa", hoaDAO.getAll());
                request.getRequestDispatcher("admin/list_product.jsp").forward(request, response);
                break;
            case "ADD":
                String method = request.getMethod();
                if(method.equals("GET")){
                //tra ve giao dien lien ket danh sach san pham quan tri
                request.setAttribute("dsLoai", loaiDAO.getAll());
                request.getRequestDispatcher("admin/add_product.jsp").forward(request, response);
                }else if(method.equals("POST")){
                    //xu ly them moi san pham
                    //b1. Lay thong tin san pham can them
                    String tenhoa = request.getParameter("tenhoa");
                    double gia = Double.parseDouble(request.getParameter("gia"));
                    Part part  = request.getPart("hinh");
                    int maloai= Integer.parseInt(request.getParameter("maloai"));
                    //b2. xu ly upload file (ảnh sản phẩm)
                    String realPath = request.getServletContext().getRealPath("assets/images/products");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    part.write(realPath + "/" + filename);
                    //b3. Them san pham vao CSDL
                    Hoa objInsert = new Hoa(0, tenhoa, gia, filename, maloai, new Date(new java.util.Date().getTime()));
                    if(hoaDAO.Insert(objInsert))
                    {
                        // thong bao them thanh cong
                        request.setAttribute("success", "Thao tác thêm sản phẩm thành công");
                    }else
                    {
                        // thông báo thêm thất bại
                        request.setAttribute("error", "Thông báo thêm sản phẩm thất bại");
                    }
                    //chuyển tiếp người dùng về action=LIST để liệt kê lại danh sách sản phẩm
                    request.getRequestDispatcher("ManageProduct?action=LIST").forward(request, response);
                }
                break;
            case "EDIT":
                //tra ve giao dien lien ket danh sach san pham quan tri
                System.out.println("EDIT");
                break;
            case "DELETE":
                //xử lý xoá sản phẩm
                //b1. lấy mã sản phẩm
                int mahoa = Integer.parseInt(request.getParameter("mahoa"));
                //b2. Xoa san pham khoi CSDL
                if(hoaDAO.Delete(mahoa))
                {
                    //thong bao them thanh cong
                    request.setAttribute("success","Thao tác xoá sản phẩm thành công");
                }else
                {
                     // thông báo thêm thất bại
                        request.setAttribute("error", "Thông báo thêm sản phẩm thất bại");
                }
                 //chuyển tiếp người dùng về action=LIST để liệt kê lại danh sách sản phẩm
                    request.getRequestDispatcher("ManageProduct?action=LIST").forward(request, response);
                break;
        }

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ManageProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
