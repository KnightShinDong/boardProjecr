<%--
  Created by IntelliJ IDEA.
  User: akdls
  Date: 2023-05-18
  Time: 오전 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>boardwrite.jsp</title>
    <script>
        function checkSubmit(){
            frm =  document.forms["frm"];

            var ftitle = frm["ftitle"].value().trim();

            if(ftitle == "") {
                alert("제목은 반드시 입력해야합니다.");
                frm["ftitle"],focus();
                return false;
            }
            return true;
        }

        function  cencel(){
            location.href="index.do";
        }
    </script>
</head>
<body>
    <form action="board_writeOk" method="post" name="frm" onclick= "return checkSubmit()">
        작성자 :<input type="text" name="fname" readonly=""><br>
        제목 : <input type="text" name="ftitle"><br>
        내용 : <textarea name="fcontent"></textarea><br>
        <input type="submit" value="등록"><br>
        <input type="button" value="취소" onclick="cencel();">
    </form>
</body>
</html>

