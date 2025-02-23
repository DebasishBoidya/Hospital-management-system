<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.container-fluid{
display:flex;
justify-content:center;
}
.col-md-12{
width:800px;}
</style>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container-fluid p-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-3 text-center">User Details</p>
                        <c:if test="${not empty errorMsg}">
                            <p class="fs-3 text-center text-danger">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
                        <c:if test="${not empty succMsg}">
                            <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Registration Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                UserDao dao = new UserDao(DBConnect.getConn());
                                List<User> list = dao.getAllUsers();
                                for (User u : list) {
                                %>
                                <tr>
                                    <td><%=u.getId()%></td>
                                    <td><%=u.getFullName()%></td>
                                    <td><%=u.getEmail()%></td>
                                    <td><%=u.getRegistrationDate()%></td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
