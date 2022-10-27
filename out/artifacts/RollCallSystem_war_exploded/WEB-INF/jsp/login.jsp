<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>学生点名系统</title>
    <style>
    html,body{
      height: 100%;
    }
    body{
      background: #006666;
    }
    h1{
      color: #FFF;
      text-align: center;
    }
    .container{
      margin: 100px auto;
      width: 30%;
    }
    form{
      background: #FFF;
      height: 300px;
      width: 100%;
      border-radius: 10px;
      position: relative;
    }
    label{
      color: #000;
      font-weight: bold;
      font-size: 20px;
      margin-left: 40px;
    }
    input{
      text-align: left;
      margin: 10px;
    }
    .input{
      width: 80%;
      height: 35px;
      margin-left: 40px;
    }
    .checkbox{
      margin-left: 30px;
    }
    a{
      text-decoration: none;
      font-weight: bold;
    }
    .submit{
      display: inline-block;
      margin-top: 0;
      margin-left:145px;
      background: #000;
      border: none;
      color: #FFF;
      height: 35px;
      width: 100px;
      text-align: center;
      font-weight: bold;
      border-radius: 5px;
    }
    .left{
      margin: 20px;
    }
    .right{
      position: absolute;
      right: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>用户登录</h1>
  <form class="form-inline" action="${pageContext.request.contextPath}/log/login" method="post">
    <br>
    <span style="color: red;font-weight: bold;text-align: center">${sessionScope.msg}</span> <br>
    <label for="username">用户名</label><br>
    <input type="text" name="username" id="username" class="input" value="" placeholder="请输入用户名"><br>
    <label for="password">密码</label><br>
    <input type="password" name="password" id="password" class="input" value="" placeholder="请输入密码">
    <button type="submit" class="submit" onclick="submits(this)" style="text-align: center">登录</button>
  </form>
</div>

</body>
</html>
