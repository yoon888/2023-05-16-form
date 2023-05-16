<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>jsp 실습</title>
    <style>
        body h1 {
            text-align: center;
        }
        #in1{
            height: 30px;
            width: 60%;
        }

        #in2{
            height: 30px;
            width: 90%;
        }
        #tab1 {
            width: 60%;
            margin: 0 auto;
        }
    </style>
    <script>
        function check(){
            if(document.frm.id.value==""){
                alert("id를 입력하세요.");
                document.frm.id.focus();
                return false;
            }
            if(document.frm.id.value.length < 4 || document.frm.id.value.length > 12){
                alert("id는 4~12자리만 가능합니다.");
                document.frm.id.focus();
                return false;
            }
            if(document.frm.name.value==""){
                alert("이름을 입력하세요.");
                document.frm.name.focus();
                return false;
            }
            if(document.frm.repass.value==""){
                alert("확인 비밀번호를 입력하세요.");
                document.frm.repass.focus();
                return false;
            }
            if(document.frm.pass.value != document.frm.repass.value){
                alert("비밀본호와 확인비밀번호가 일치하지 않습니다.");
                document.frm.repass.focus();
                return false;
            }
            if(document.frm.pass.value==""){
                alert("비밀번호를 입력하세요.");
                document.frm.pass.focus();
                return false;
            }
            if (document.frm. addr. value == ""){
                alert("주소를 입력하세요");
                document.frm.addr.focus();
                return false;
            }
        }
    </script>    
    </head>
    <body>
        <h1>회원 가입</h1>
        <form name="frm" method="post" action="#">
            <table border="1" id="tab1">               
                <tr>
                    <td>아이디</td>
                    <td><input type="text" name="id" id="in1"></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" name="name" id="in1"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" name="pass" id="in1"></td>
                </tr>
                <tr>
                    <td>확인 비밀번호</td>
                    <td><input type="password" name="repass" id="in1"></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" name="phone" id="in1"></td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" name="addr" id="in2"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button" value="저장" onclick="check()">
                        <input type="reset" value="취소">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>