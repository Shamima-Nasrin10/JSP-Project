

<jsp:useBean class="model.Teacher" id="teacher"/>
<jsp:setProperty name="teacher" property="*"/>
<%@page import="dao.TeacherDAO" %>

<%
    int result = TeacherDAO.updateTeacher(teacher);
    
    if (result > 0){
        response.sendRedirect("teacherlist.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
