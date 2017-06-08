<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function myFunction() {
    alert("paid successfully");
    
}
</script>
<title>Insert title here</title>
</head>
<body>


결재창
<form action="userlogin.jsp">
<table border=1>
<tr><td> p_id</td>
<td> <input type=text name=code value='${p_id}' readonly></td></tr> 
<tr><td> s_id </td>
<td> <input type=text name=code value='${s_id}' ></td></tr> 
<tr><td> r_id  </td>
<td> <input type=text name=code value='${r_id}'></td></tr> 
<tr><td> total cost  </td>
<td> <input type=text name=code value='${amount}' readonly></td></tr> 
<tr><td> payment  </td>
<td> <input type=text name=code value='${payment}' readonly></td></tr> 
<tr><td> <button onclick="myFunction()">payment</button></td></tr>


</table>
</form>
</body>
</html>