<%-- 
    Document   : notification
    Created on : Oct 28, 2024, 10:03:58 AM
    Author     : ADMIN
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getAttribute("success") != null){
%>
<script>
    Swal.fire({
        title: "Thành Công",
        text: "<%=request.getAttribute("success")  %>",
        icon: "success"
    });
</script>
<%
    }
%>

<%
    if(request.getAttribute("error") !=null){    
%>
<script>
    Swal.fire({
        title: "Thất bại",
        text: "<%=request.getAttribute("error")  %>",
        icon: "error"
    });
</script>
<%
    }
%>
