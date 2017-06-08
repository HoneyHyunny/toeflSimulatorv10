<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>  
 <%@ page import="javax.sql.*,javax.naming.*" %>     
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title> 학생 로그인</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="assets/css/main.css" />
  <style>
    .a {text-decoration: none;}
      .top {
          width: 100%;
          height: 12%;
          margin: 0;
          }
    .user-pic {
        padding: 0;
        margin: 0;
        float: left;
        width: 40%;}
      #logo {
          padding: 0;
          margin: 7%;
          height: 40%;
      }
      table {
        width: 100%;
        float: middle;
        vertical-align: middle;
      }
      th {color: black;}
      table, th, td {
        border: 1px solid #bcbcbc;
      }
      login {
          float: right;
/*         */
      }
      nav {
          width: 100%;
          height: 60%
      }
              .setDiv {
            padding-top: 100px;
            text-align: center;
        }
        .mask {
            position:absolute;
            left:0;
            top:0;
            z-index:9999;
            background-color:#000;
            display:none;
        }
        .window {
            display: none;
            background-color: #ffffff;
            height: 500px;
            width: 500px;
            z-index:99999;
        }
        	#main > section.one {
				background-color: #81918E;
				background-image: url("../../images/banner.jpg");
			}
  </style>
  
  			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollzer.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			 <script language="JavaScript">
   			 function openNewWindow(window) {
    			open (window,"NewWindow","left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=200, height=200");
    				}
        		</script>    
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">
    function wrapWindowByMask(){
        // 화면의 높이와 너비를 변수로 만듭니다.
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();
 
        // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
        $('.mask').css({'width':maskWidth,'height':maskHeight});
 
        // fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
        $('.mask').fadeIn(1000);
        $('.mask').fadeTo("slow",0.8);
 
        // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
        var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
        var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );
 
        // css 스타일을 변경합니다.
        $('.window').css({'left':left,'top':top, 'position':'absolute'});
 
        // 레이어 팝업을 띄웁니다.
        $('.window').show();
    }
 
    $(document).ready(function(){
        // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
        $('.showMask').click(function(e){
            // preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
            e.preventDefault();
            wrapWindowByMask();
        });
 
        // 닫기(close)를 눌렀을 때 작동합니다.
        $('.window .close').click(function (e) {
            e.preventDefault();
            $('.mask, .window').hide();
        });
 
        // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
        $('.mask').click(function () {
            $(this).hide();
            $('.window').hide();
        });
    });
</script>
			
	
  
  
  
</head>
<body>
  <div id="header">
    <div class="top">
      <div id="logo">
        <img src="images/logo.png" alt="" class="user-pic"/>
        			
        			<form action="requserinfo.jsp">
        			 <h1 id="title" style="padding: 10% 0 1% 0 ;">
					${s_id} 님, <br>환영합니다!<br>
						<%-- <input type=text name=code value='${id}' readonly> --%>
				</h1><form action="requserinfo.jsp">
        			 
          <h1 id="title" style="padding: 10% 0 1% 0;"></h1>
            <p style="padding: 2% 0 1% 0;"></p>
              </div>
        </div>
    <nav id="nav">
    <!-- <a href="foo.html" data-rel="dialog">Open dialog</a> -->
              <ul>
               <!--  <li><a href="#" class="showMask">로그인</a></li> -->
				
                  <li><a href="#about" id="about-link" class="skel-layers-ignoreHref">About Me</a></li>
                  
                  <li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">Portfolio</a></li>
				
				<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref">Contact</a></li>
              </ul>
              </nav>
  
  </div>
    <div id="main">
    <section id="top" class="one dark cover">
     
      <header>
        <h2 class="alt">TSM이 만들면 다릅니다<br/></h2>
		<p>저렴하고 깔끔한 Toefl Simulator 지금 체험해 보세요.</p>
      </header>
          <footer>
              <a href="#portfolio" class="button scrolly">Test list</a></footer>
          </section>
    

      <section id="about" class="three">
          <div class="container">
              <header><h2>About Me</h2></header>
                <a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
              <p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna. Ridiculus
				ultricies curae quis et rhoncus velit. Lobortis elementum aliquet nec vitaelaoreet eget cubilia quam non etiam odio tincidunt montes. Elementum sem parturient nulla quam placerat viverra mauris non cum elit tempus ullamcorperdolor. Libero rutrum ut lacinia donec curae mus vel quisque sociis necornare iaculis.</p>
          </div>
        </section>
  
          <section id="portfolio" class="two">
            <div class="container">
        <header>
            <h2>Available TestList</h2></header>
        <div>

		<table border=1 width=400>
			<tr>
	<td> num</td>
	<td> desc</td>
	<td>payment</td>
	<td> y_n check </td>
	</tr>
<%


Connection myconn=null;
PreparedStatement pst =null;
ResultSet rs=null;
try{
	Context fcontext =new InitialContext();
	DataSource ds=(DataSource)fcontext.lookup("java:comp/env/jdbc/toefl");
	myconn=ds.getConnection();
	String q1="select * from regist";
	pst=myconn.prepareStatement(q1);
	rs=pst.executeQuery();
	while(rs.next())
	{
	%>
	<form>
	<tr>
	<td><%=rs.getString("r_id") %></td>
	<td><%=rs.getString("r_desc") %></td>
	<td><%=rs.getString("r_payment") %></td>
	<td><button type="submit" value="전송" formaction="paynext.jsp" >  </button></tr>
	 </form>
 
	<%
	
	
	
	
	
	
	
	
	}
}
finally{
	if(pst!=null) try{pst.close();} catch(SQLException err) {err.printStackTrace();}
	if(myconn!=null) try{myconn.close();} catch(SQLException err) {err.printStackTrace();}
}

%>
</table>
        </div>
            </div>
        </section>
    
    
      <div class="bottom">
      </div>    
<section id="contact" class="four">
    <div class="container">
        <header><h2>문의하기</h2></header>
<p>Elementum sem parturient nulla quam placerat viverra
mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="6u 12u$(mobile)"><input type="text" name="name" placeholder="Name" /></div>
									<div class="6u$ 12u$(mobile)"><input type="text" name="email" placeholder="Email" /></div>
									<div class="12u$">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="12u$">
										<input type="submit" value="Send Message"/>
									</div>
								</div>
							</form>

						</div>
					</section>
					
					

			</div>
			<div id="footer">
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li>
                        <li>Design: <a href="http://html5up.net">#</a></li>
					</ul>
			</div>


			 <div class="mask"></div>
    <div class="window">
    		<form action="requserinfo.jsp" method="post">
		put in your Id and Password <br>
		ID : <input type="text" name="s_id"><br>
		Password: <input type="password" name="s_pwd"><br>
		<input type="submit" value="submit">
        <input type="button" href="#" class="close" value="close"/>
        <a  href="reg_form.jsp"><input type="button" value="regist!"/></a>
        </form>
        
    </div>
</div>

		
	</body>
</html>