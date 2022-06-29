import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class viewstaff extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","");
               Statement st = con.createStatement(); 
               ResultSet rs = st.executeQuery("select * from addstaff");
               out.println("<style>.viewstaff{\n" +
"                background-color: black;\n" +
"                color:white;\n" +
"                border:1px solid black;\n" +
"                cursor:pointer;\n" +
"            }td,th{\n" +
"                width:300px;\n" +
"                height:70px;\n" +
"                font-size:26px;\n" +
"            }\n" +
"            .container{\n" +
"                margin:10px;\n" +
"                width:90em;\n" +
"                height:10vh;\n" +
"                display:flex;\n" +
"                align-items:center;\n" +
"                justify-content: center;\n" +
"                background-color: black;\n" +
"                color: white;\n" +
"                border-bottom: 2px solid black;\n" +
"            }\n" +
"            .logo{\n" +
"                width:50em;                \n" +
"                justify-content: flex-start;\n" +
"            }           \n" +
"            .container_two{\n" +
"                margin:10px;\n" +
"                width:90em;\n" +
"                height:10vh;\n" +
"                display:flex;\n" +
"                align-items:center;\n" +
"                justify-content: space-around;                \n" +
"            }\n" +
"            .header_button,.logout{\n" +
"                width:120px;\n" +
"                height:40px;\n" +
"                cursor: pointer;\n" +
"                background-color: black;\n" +
"                color: white;\n" +
"                border-radius: 10px;\n" +
"            }\n" +
"            a{\n" +
"                text-decoration: none;\n" +
"                color:white;\n" +
"            }\n" +
"            .a{\n" +
"                border:5px solid black;\n" +
"                text-decoration: none;\n" +
"                font-size:36px;\n" +
"                color:black;\n" +
"            }\n" +
"        </style><div class=\"container\">\n" +
"            <h1 class=\"logo\">CRIME RECORDS MANAGEMENT SYSTEM</h1>            \n" +
"                <button class=\"logout\"><a href=\"logout\">logout</a></button>\n" +
"            \n" +
"        </div>\n" +
"        \n" +
"        <div class=\"container_two\">\n" +
"            <button class=\"header_button\"><a href=\"index.html\">Home</a></button>   \n" +
"            <button class=\"header_button\"><a href=\"addstaff.jsp\">Add Staff</a></button>   \n" +
"            <button class=\"header_button\"><form action=\"viewstaff\"><input class=\"viewstaff\" type=\"submit\" value=\"View Staff\"></form></button>   \n" +
"            <button class=\"header_button\"><a href=\"viewcases.jsp\">View Cases</a></button>               \n" +
"        </div>");
         
               while(rs.next()){    
                out.println("<table border=2>");
                out.print("<tr><td>First Name: " + rs.getString(1)+"</td>");
                out.print("<td> Last Name: " + rs.getString(2)+"</td>");
                out.print("<td>Designation: " + rs.getString(3)+"</td>");
                out.print("<td>Gender: " + rs.getString(4)+"</td>");
                out.println("<td> Staff number: " + rs.getInt(5)+"</td></tr>");
                out.print("\n");
               }
           }
           catch(Exception e){
               
           }
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
