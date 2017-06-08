<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.sql.*" %>
 <%@ page import="javax.sql.*,javax.naming.*" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String s_id=request.getParameter("s_id");
String s_pwd=request.getParameter("s_pwd"); 

Connection myconn=null;
PreparedStatement pst=null;
ResultSet rs=null;

/* 
if(rs.next())
{
	int id=rs.getInt("p_id");
	String s_id = rs.getString("s_id");
	int r_id = rs.getInt("r_id");
	int amount =rs.getInt("amount");
	int payment = rs.getInt("payment");
	
	request.setAttribute("p_id",id);
	request.setAttribute("s_id",s_id);
	request.setAttribute("r_id",r_id);
	request.setAttribute("amount",amount);
	request.setAttribute("payment",payment);
	
	
}

else{
	out.println("없");
}

stmt.close();
myconn.close();

RequestDispatcher dispatch=request.getRequestDispatcher("paynext.jsp");
dispatch.forward(request, response);
 */



try{
	Context fcontext=new InitialContext();
	DataSource ds=(DataSource)fcontext.lookup("java:comp/env/jdbc/toefl");
	myconn=ds.getConnection();
	String q1="select * from userinfo where s_id=? && s_pwd=?";
	pst=myconn.prepareStatement(q1);
	pst.setString(1, s_id);
	pst.setString(2, s_pwd);
	rs=pst.executeQuery();

	if(rs.next())
	{
		  if(s_id.equals(rs.getString("s_id")) && s_pwd.equals(rs.getString("s_pwd")))
		  {
			  	 	if(s_id.equals("admin"))
					{ 
										
						
			  	 		out.println("<script>alert('You re admin! welcome!');</script>");	
		   				
			  	 		
			  	 		session.setAttribute("s_id",s_id);
		   				
		   				out.println("<script>");
		   				out.println("location.href='admin.jsp'");

		   				request.setAttribute("s_id", "s_id");

					/* 	RequestDispatcher dispatch=request.getRequestDispatcher("userlogin.jsp");
						dispatch.forward(request, response);	 */	

		   				out.println("</script>");
		   						   				
 		   			}
			  	 	
			  	 	else 
			  	 	{
			  	 	
			  	 	session.setAttribute("s_id",s_id);
			  	 	
			   		out.println("<script>");
			  	 	out.println("location.href='userlogin.jsp'");
			  	 	request.setAttribute("s_id", "s_id");
			  	 	out.println("</script>");
			  	 	
			  	 	}
			  	 	
		  }
		
			
			  	 	
	 }  
	  else
	  {
			out.println("<script>alert('login failed! please check your correct id with password!');</script>"); 
			out.println("<script>");
			out.println("location.href='MainHome.html'");
			out.println("</script>");
	  }




} 



	
		catch(Exception e){
		 e.printStackTrace();
		}
	
	 finally{
		if(myconn !=null) try{myconn.close();} catch(SQLException err){}
	}
	 
		%>


</body>
</html>