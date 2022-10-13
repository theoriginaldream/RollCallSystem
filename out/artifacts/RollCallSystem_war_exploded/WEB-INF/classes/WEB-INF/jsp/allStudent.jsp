<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
  <title>书籍展示</title>

  <%--BookStrap美化界面--%>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          <small>学生列表————显示所有学生</small>
        </h1>
      </div>
    </div>

    <div class="row">
      <div class="col-md-4 column">
        <%--toAddBook--%>
        <a class="btn btn-primary" href = "${pageContext.request.contextPath}/student/toAddStudent">新增书籍</a>
        <a class="btn btn-primary" href = "${pageContext.request.contextPath}/student/allStudent">显示全部书籍</a>
      </div>
      <div class="col-md-8 column">
        <%--查询书籍--%>
        <form class="form-inline" action="${pageContext.request.contextPath}/student/queryStudent" method="post" style="float: right">
          <span style="color: red;font-weight: bold">${error}</span>
          <input type="text" name="query" class="form-control" placeholder="请输入要查询的学生学号或姓名">
          <input type="submit" value="查询" class="btn btn-primary">
        </form>
      </div>
    </div>
  </div>

  <div class="row clearfix">
    <div class="col-md-12 column">
      <table class="table table-hover table-striped">
        <thead>
        <tr>
          <th>学生学号</th>
          <th>学生姓名</th>
          <th>学生状态</th>
          <th>操作</th>
        </tr>
        </thead>

        <%--书籍从数据库中查询出来，从这个list中遍历出来：foreach--%>
        <tbody>
        <c:forEach var="student" items="${list}">
          <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.status}</td>
            <td>
              <a href = "${pageContext.request.contextPath}/student/toUpdateStudent?id=${student.id}">修改</a>
              &nbsp; | &nbsp;
              <a href = "${pageContext.request.contextPath}/student/deleteStudent/${student.id}">删除</a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

</div>

</body>
</html>
