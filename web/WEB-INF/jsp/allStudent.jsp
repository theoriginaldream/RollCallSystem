<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
  <title>学生展示</title>

  <%--BookStrap美化界面--%>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">

  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          <small>学生点名系统</small>
        </h1>
      </div>
    </div>

    <div class="row">
      <div class="col-md-9 column">
        <a class="btn btn-primary" href = "${pageContext.request.contextPath}/student/toAddStudent">新增学生</a>
        <a class="btn btn-primary" href = "${pageContext.request.contextPath}/student/allStudent">显示全部学生</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/randomStudent">抽点一名学生</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/initStudent">初始化学生列表</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/querySignOut">查询缺勤学生</a>
        <form class="form-inline" action="${pageContext.request.contextPath}/student/randomSomeStudent" method="post">
          <input type="text" name="num" class="form-control" placeholder="请输入要抽点的学生个数" required>
          <input type="submit" value="抽点" class="btn btn-primary">
        </form>
      </div>

      <div class="col-md-3 column">
        <form class="form-inline" action="${pageContext.request.contextPath}/student/queryStudent" method="post" style="float: right">
          <input type="text" name="query" class="form-control" placeholder="请输入学生学号或姓名">
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
          <th style="text-align: center">点名操作</th>
          <th style="text-align: center">学生学号</th>
          <th style="text-align: center">学生姓名</th>
          <th style="text-align: center">考勤状况</th>
          <th style="text-align: center">操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="student" items="${list}">
          <tr>
            <c:if test="${student!=null}">
              <td style="text-align: center">
                <a class="btn btn-default btn-link" href = "${pageContext.request.contextPath}/student/signInStatus?id=${student.id}" >已到</a>
                |
                <a class="btn btn-default btn-link" href = "${pageContext.request.contextPath}/student/signOutStatus?id=${student.id}">缺勤</a>
              </td>
            </c:if>
            <td style="text-align: center">${student.id}</td>
            <td style="text-align: center">${student.name}</td>
            <td style="text-align: center">${student.status}</td>
            <c:if test="${student!=null}">
              <td style="text-align: center">
                <a class="btn btn-default btn-link" href = "${pageContext.request.contextPath}/student/toUpdateStudent?id=${student.id}" >修改</a>
                |
                <a class="btn btn-default btn-link" href = "${pageContext.request.contextPath}/student/deleteStudent/${student.id}">删除</a>
              </td>
            </c:if>

          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

</div>

</body>
</html>
