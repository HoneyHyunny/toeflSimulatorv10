<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script>
      $( function() {
        $( "#accordion" ).accordion({
        heightStyle: "content" }); });
    </script>
    <script>
        function openDaumPostcode() {
        var width = 500; //�˾�â�� ����ɶ� ��ġ����
        var height = 600; //�˾�â�� ����ɶ� ��ġ����
        new daum.Postcode({
        width : width, //�˾�â�� ����ɶ� ��ġ����
        height : height, //�˾�â�� ����ɶ� ��ġ����
        oncomplete: function(data) { // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
            var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
            var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
 
            // ���������� ���� ��� �߰��Ѵ�.
            if(data.bname !== ''){
                extraRoadAddr += data.bname;
            }
            // �ǹ����� ���� ��� �߰��Ѵ�.
            if(data.buildingName !== ''){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }
             
            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
            document.getElementById("post1").value = data.postcode1;
            document.getElementById("post2").value = data.postcode2;
            document.getElementById("addr1").value = fullRoadAddr;
            document.getElementById("addr2").value = data.jibunAddress;
 
            document.getElementById('addr2').focus();
        }
    }).open({
        left : (window.screen.width / 2) - (width / 2), //�˾�â�� ����ɶ� ��ġ����
        top : (window.screen.height / 2) - (height / 2) //�˾�â�� ����ɶ� ��ġ����
    });
}
        
      function chk(){
    	  var req = document.form.req.checked;
    	  var num =0;
    	  if(req == true){
    		  num = 1;
    	  }
    	  if(num == 1){
    		  document.form.submit();
    	  }else{
    		  alert("�������� ����� �����ϼž� �մϴ�.");
    	  }
      }  
       function nochk(){
    	   alert("�������� ������ �����Ͻ� �� �����ϴ�.");
           location.href="reg_form.jsp"
       }

  
   
      
</script>
    <style>
        body {
            font-family: "KoPubdotum Light";
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            text-align: center;
        }
        p {
        border: 1px #ccc solid ;
        padding: 4px;
        margin: 8px;
        }
        th{background-color: #F6F5FF; font-size: 13px; text-align: left; border: 0.5px solid #ccc; padding: 7px 15px 7px 6px}
        td{font-size: 10px; border: 1px solid #ccc; padding: 7px 15px 7px 6px; text-align: left;}
        table{margin: auto;}
        input{margin-right: 5px;}
        select{padding-left: 0;}
        .but, .but:link, .but:visited, .but:hover{
	      text-decoration: none;
          color: black;
        }
        .but:active{
            text-decoration: none;
            background-color: aliceblue;
        }
        .acc_hd {
          text-align: left;
          background-color: aliceblue;
	      display: block;
	      margin: 0;
	      padding: .5em .5em .5em .7em;
        }   
        #body_header {
          color: black;
          margin-bottom: 0;
          padding-bottom: 0;
          width: 100%;
          height: 2.5em;
        }
        #body_contents {
          background-color: white;
          padding-top: 0;
          width: 100%;
          height: 100%;
        }
        #accordion {
            display: block;
            height: 80%;
            background-color: white;
        }

        #post1, #post2, #post-b{margin-bottom: 3px}
        #div_under {
            padding: 10px;
        }
    </style>

</head>
<body>
	   <form name="joinform" method="post" action="get_logininfo.jsp" onsubmit="return submitForm()">
    <h1 id="body_header">ȸ������</h1>
    <div id="body_contents">
    <div id="accordion">
      <h4 class="acc_hd">�������</h4>
        <div class="acc_ct">
      <h3>����������ȣ</h3>
      <p>3OA�� ��� ȸ�� �����е鲲�� ���񽺸� �̿��ϱ� ���� ������ ���� ������ ��ȣ ���� �� �ֵ��� �ּ��� ���ϰ� �ֽ��ϴ�. 3OA�� �������� ��ȣ��å�� ������ ���� ������ ��ħ�� ����, �Ǵ� �̿��� �� ���� ���� ��ȭ�� ���� ���Ƿ� ����� �� �ֽ��ϴ�. ȸ�� �����в����� ����Ʈ �湮 �� �������� ��ȣ��å�� ���÷� Ȯ���Ͻñ� �ٶ��ϴ�. 3OA�� ������� ��� ���� ���������� �� 3�ڿ��� �������� �ʽ��ϴ�.</p>
            <input type="radio" name="gender" value="agree" onclick="chk()">�����մϴ�.
            <input type="radio" name="gender" value="disagree" onclick="nochk()">���������ʽ��ϴ�.
      <div id="div_under">
          <!--        <a href="#acc2"><input type="submit" value="Ȯ��" class="but"></a></div> -->  </div>
          </div>
  <h4 id="acc2" class="acc_hd">������</h4>
  <div id="acc_ct1">
      <div style="padding-top: 20px;">
        <table>
        		<tr>
        		<th>�̸�</th>
                <td><input type="text" id="s_name" name="s_name" size="11"/></td>
            </tr>
        
            <tr>
                <th>���̵�</th>
            <td>
                <input type="text" id="s_id" size="15" maxlength="20" name="s_id">
                <input type="button" value="�ߺ��˻�">
            </td>
            </tr>
            <tr>
            <th>��й�ȣ</th>
                <td>
                    <input id="s_pwd" type="password" name="s_pwd" size="24"/>
                    *8~12���� ���� ��ҹ��ڿ� ���ڸ� �����ؼ� ����Ͻ� �� �ֽ��ϴ�.
                </td>
            </tr>
            
            <tr>
                <th>��ȭ��ȣ</th>
                <td>
                <select>
                    <option>010</option>
                    <option>011</option>
                </select>
                    <input type="text" id="s_phone" size="8" name="s_phone"/>       
                    <input type="button" value="������ȣ�߼�">
                </td>
            </tr>
            <tr> 
                <th>�ּ�</th>
                <td>
                     <input id="s_post1" readonly="" size="5" name="s_post1"> - <input id="post2" readonly="" size="5" name="s_post2">
					<input onclick="openDaumPostcode()" type="button" value="�����ȣã��"><br>
					<span style="LINE-HEIGHT: 10%"><br></span>
					<input id="s_addr1" readonly="" size="40" name="s_addr1" placeholder="���θ��ּ�"><br>
				<span style="LINE-HEIGHT: 10%"><br></span>
					<input id="s_addr2" size="40" name="s_addr2" placeholder="�����ּ�">

                </td>
                </tr>
                <tr>
                <th>���ּ�</th>
                <td><input type="text" id="s_addr3" name="s_addr3" size="60"/></td>
            </tr>
          </table>
             <div id="div_under">
                 <!--                 <a href="#acc3"><input type="submit" value="Ȯ��" class="but"></a></div>--></div>
    </div>
      </div>
  
  <h4 id="acc3" class="acc_hd">����</h4>
  <div id="acc_ct2">
        <div style="padding-top: 20px;">���εǾ����ϴ�.</div>
        
      <div id="div_under">
          <a href="MainHome.html"><button type="submit" value="����"><img src="home.png" alt="g" width="25"></button></a>
  </div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>