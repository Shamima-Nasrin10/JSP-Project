<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Teacher</title>
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
            <h1 class="text-center mb-4">Add Teacher</h1>

            <form action="saveteacher.jsp" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name"/>
                </div>
                
               
                <div class="form-group">
                    <label for="department">Department:</label>
                    <select name="department" id="department" class="form-control">
                        <option value="">Please Select</option>
                        <option value="Java">Java</option>
                        <option value="C#">C#</option>
                        <option value="PHP">PHP</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <label>
                        <input type="radio" name="gender" value="Male"/> Male
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Female"/> Female
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Others"/> Others
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
