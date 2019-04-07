
package HostelManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aman
 */
public class register extends HttpServlet {
    
    
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        PrintWriter out=res.getWriter();
        String name = req.getParameter("name");
        int id = Integer.parseInt(req.getParameter("id"));
        String dob = req.getParameter("dob");
        String gender= req.getParameter("gender");
        String email= req.getParameter("email");
        String password= req.getParameter("password");
        String ans= req.getParameter("ans");
        String reg= req.getParameter("reg");
       
        try {
            String ss="jdbc:mysql://localhost:3306/newproject";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(ss,"root","");
            Statement s=con.createStatement();
                  String query="insert into register values('"+name+"',"+id+",'"+dob+"','"+gender+"','"+email+"','"+password+"','"+ans+"','"+reg+"')";             
                    int count=s.executeUpdate(query);
                     out.print("<body><center><b><font color='blue'></font></b></center></body>");
                    RequestDispatcher rd=req.getRequestDispatcher("index.html");  
                    rd.include(req, res); 
                    
        } catch (Exception ex ) {
            ex.getMessage();
        }
    }
}