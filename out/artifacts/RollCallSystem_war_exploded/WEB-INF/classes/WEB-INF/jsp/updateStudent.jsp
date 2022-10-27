<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
  <title>修改学生</title>

  <%--BookStrap美化界面--%>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          <small>修改学生</small>
        </h1>
      </div>
    </div>
  </div>

  <form action="${pageContext.request.contextPath}/student/updateStudent" method="post">
    <%--修改时id也要传，前端传递隐藏域--%>
    <input type="hidden" name="id" value="${qStudent.id}">
    <div class="form-group">
      <label>学生姓名：</label>
      <input type="text" name="name" class="form-control" value="${qStudent.name}" required>
    </div>
    <div class="form-group">
      <label>学生状态：</label>
      <input type="text" name="status" class="form-control" value="${qStudent.status}">
    </div>
    <div class="form-group">
      <input type="submit" class="form-control" value="修改">
    </div>
  </form>
</div>

</body>
</html>
