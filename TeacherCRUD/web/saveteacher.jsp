

<jsp:useBean class="model.Teacher" id="teacher"/>
<jsp:setProperty name="teacher" property="*"/>
<%@page import="dao.TeacherDAO" %>

<%
    int result = TeacherDAO.saveTeacher(teacher);
    
    if (result > 0){
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
