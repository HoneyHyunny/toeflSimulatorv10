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
//회원가입 정보 저장하는 jsp로 db안에  저장하기 



request.setCharacterEncoding("euc-kr");
String s_name=request.getParameter("s_name");
String s_id=request.getParameter("s_id");
String s_pwd=request.getParameter("s_pwd");
String s_phone=request.getParameter("s_phone");
String s_post1=request.getParameter("s_post1");
String s_post2=request.getParameter("s_post2");
String s_addr1=request.getParameter("s_addr1");
String s_addr2=request.getParameter("s_addr2");
String s_addr3=request.getParameter("s_addr3");




Connection myconn=null;
PreparedStatement pstmt=null;


try{
	Context fcontext=new InitialContext();
	DataSource ds=(DataSource)fcontext.lookup("java:comp/env/jdbc/toefl");
	myconn=ds.getConnection();
	pstmt=myconn.prepareStatement("Insert into userinfo values(?,?,?,?,?,?,?,?,?)");
	  pstmt.setString(1,s_name);
	  pstmt.setString(2,s_id);
	  pstmt.setString(3,s_pwd);
	  pstmt.setString(4,s_phone);
	  pstmt.setString(5,s_post1);
	  pstmt.setString(6,s_post2);
	  pstmt.setString(7,s_addr1);
	  pstmt.setString(8,s_addr2);
	  pstmt.setString(9,s_addr3);
	
	  pstmt.executeUpdate();
}

finally{if(myconn !=null) try{myconn.close(); response.sendRedirect("MainHome.html");}

catch(SQLException err){
}}


%>



</body>
</html>