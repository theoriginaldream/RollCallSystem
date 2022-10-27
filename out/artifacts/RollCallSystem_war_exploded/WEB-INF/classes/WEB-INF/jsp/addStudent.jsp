<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>Title</title>

    <%--BookStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>增加学生</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/student/addStudent" method="post">
        <div class="form-group">
            <label>学生学号：</label>
            <input type="text" name="id" class="form-control" required>
        </div>
        <div class="form-group">
            <label>学生名称：</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="form-group">
            <label>学生状态：</label>
            <input type="text" name="Status" class="form-control">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>

</body>
</html>
