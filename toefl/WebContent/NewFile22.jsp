<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.sql.*" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String code =request.getParameter("payment");
Connection myconn=null;
PreparedStatement stmt=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
myconn=DriverManager.getConnection("jdbc:mysql://localhost:3306/toefl","root","root");
String q1="select * from payment"; 
stmt=myconn.prepareStatement(q1);
rs=stmt.executeQuery(q1);

if(rs.next())
{
	int p_id=rs.getInt("p_id");
	String p_s_id = rs.getString("p_s_id");
	int p_r_id = rs.getInt("p_r_id");
	int p_amount =rs.getInt("p_amount");
	int p_payment = rs.getInt("p_payment");
	
	request.setAttribute("p_id",p_id);
	request.setAttribute("p_s_id",p_s_id);
	request.setAttribute("p_r_id",p_r_id);
	request.setAttribute("p_amount",p_amount);
	request.setAttribute("p_payment",p_payment);
	
	
}

else{
	out.println("없");
}

stmt.close();
myconn.close();

RequestDispatcher dispatch=request.getRequestDispatcher("paynext.jsp");
dispatch.forward(request, response);



%>



</body>
</html>