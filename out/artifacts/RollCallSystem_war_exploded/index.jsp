<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>

  <style>
    a{
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3{
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 5px;
    }
  </style>

</head>
<body>

<h2 style="text-align: center">学生点名系统</h2>
<h3>
  <a href = "${pageContext.request.contextPath}/log/toLogin">去登录</a>
</h3>

</body>
</html>
