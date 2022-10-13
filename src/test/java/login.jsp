<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>
      学生点名系统
    </title>
</head>
<body>
<section>
  <header>
    <h2 style="text-align: center">学生点名系统</h2>
  </header>
  <form style="text-align: center" class="form-inline" action="${pageContext.request.contextPath}/log/login" method="post">
    <span style="color: red;font-weight: bold;text-align: center">${sessionScope.msg}</span> <br>
    <input type="text" name="username" class="form-control" placeholder="请输入用户名"> <br>
    <input type="password" name="password" class="form-control" placeholder="请输入密码"> <br>
    <input type="submit" value="登录" class="btn btn-primary">
  </form>

</section>

</body>
</html>
