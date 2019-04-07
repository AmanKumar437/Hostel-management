package HostelManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Aman
 */
public class  LoginPage extends HttpServlet {

     @Override
     
     protected void doGet (HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();    
        String s1=request.getParameter("name");  
        String s2=request.getParameter("password");
        
        try
        {
            String ss="jdbc:mysql://localhost:3306/newproject";
           
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con=DriverManager.getConnection(ss,"root","");
            PreparedStatement s=con.prepareStatement("select * from register where name=? and password=?");
            
            s.setString(1,s1);
            s.setString(2,s2);
            
            ResultSet r=s.executeQuery();
            int x=0;
            while(r.next())
            {
                String u=r.getString("name");
                String p=r.getString("password");
                if(u.equals(s1) && p.equals(s2))
                {
                    HttpSession session = request.getSession();
                    session.setAttribute("uname",u);
                     String stp = r.getString("reg");

                        if (stp.equals("Admin")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("firstpage.jsp");

                } else if (x == 1) {

                    response.sendRedirect("admin.jsp");

                }
                
               
        
                   // out.close();
            
                else{
            out.print("<body><center><b><font color='green'>Incorrect Username or Password</font></b></center></body>");
                    RequestDispatcher rd=request.getRequestDispatcher("index.html");  
                    rd.include(request, response);    }
                    //response.sendRedirect("Login.html");
        } catch (Exception ex) {
               
         }      
    } 
         }  
