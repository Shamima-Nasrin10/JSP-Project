<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@page import="model.Teacher" %>
<%@page import="dao.TeacherDAO" %>
<%@page import="java.util.List" %>

<%
    List<Teacher> teachers = TeacherDAO.teacherList();
    request.setAttribute("teachers", teachers);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Teacher List</title>
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
        <h1 class="text-center">Teacher List</h1>

        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Gender</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <core:forEach var="teacher" items="${teachers}">
                    <tr>
                        <td>${teacher.getId()}</td>
                        <td>${teacher.getName()}</td>
                        <td>${teacher.getDepartment()}</td>
                        <td>${teacher.getGender()}</td>
                        <td>
                            <a href="updateteacherform.jsp?id=${teacher.getId()}" class="btn btn-primary btn-sm">Edit</a>
                            <a href="deleteteacher.jsp?id=${teacher.getId()}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </core:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
