<%@page import="model.Teacher" %>
<%@page import="dao.TeacherDAO" %>

<%
    String teacherId = request.getParameter("id");
    Teacher teacher = TeacherDAO.getTeacherById(Long.parseLong(teacherId));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Teacher</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg" style="background-color: #fee2e2;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#" style="color: #6610f2">Teacher CRUD</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/webapp3" style="color: #6610f2">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="addteacherform.jsp" style="color: #6610f2">Add Teacher</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="teacherlist.jsp" style="color: #6610f2">Teacher List</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container mt-4">
            <h1 class="text-center mb-4">Edit Teacher</h1>

            <form action="updateteacher.jsp" method="post">
                <input type="hidden" name="id" value="<%=teacher.getId()%>"/>

                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%=teacher.getName()%>"/>
                </div>


                <div class="form-group">
                    <label for="subject">Department:</label>
                    <select name="subject" id="subject" class="form-control">
                        <option value="">Please Select</option>
                        <option value="Java" <%= "Java".equals(teacher.getDepartment()) ? "selected" : "" %>>Java</option>
                        <option value="C#" <%= "C#".equals(teacher.getDepartment()) ? "selected" : "" %>>C#</option>
                        <option value="PHP" <%= "PHP".equals(teacher.getDepartment()) ? "selected" : "" %>>PHP</option>
                    </select>
                </div>
                div class="form-group">
                    <label for="gender">Gender:</label>
                    <div>
                        <label>
                            <input type="radio" name="gender" value="Male" <%= "Male".equals(teacher.getGender()) ? "checked" : "" %> /> Male
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Female" <%= "Female".equals(teacher.getGender()) ? "checked" : "" %> /> Female
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Others" <%= "Others".equals(teacher.getGender()) ? "checked" : "" %> /> Others
                        </label>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
