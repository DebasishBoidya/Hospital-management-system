<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 8px 0 rgba(0, 0, 0, 1);
    background-color: rgba(255, 255, 255, 0.5); 
}

.container{
background-color: rgba(255, 255, 255, 0);
height:100vh;
        display: flex;
    align-items: center;
    justify-content: center;   
}
 body {
    background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
        url("img/h3.jpg");
        background-size: cover;
    background-repeat: no-repeat;
}

</style>
</head>
<body>
    <%@include file="component/navbar.jsp"%>
    <br><br>
    <div class="container">
        <div class="d-flex justify-content-center">
            <div class="col-md-6">
                <div class="card paint-card">
                    <div class="card-body">
                        <h1 class="text-center">Book Appointment</h1>
                        <c:if test="${not empty errorMsg}">
                            <p class="fs-4 text-center text-danger">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
                        <c:if test="${not empty succMsg}">
                            <p class=" fs-4 text-center text-success">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>
                        <form class="row g-3 mt-2" action="appAppointment" method="post">

                            <input type="hidden" name="userid" value="${userObj.id }">

                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Full Name</label> <input
                                    required type="text" class="form-control" name="fullname">
                            </div>

                            <div class="col-md-6">
                                <label>Gender</label> <select class="form-control" name="gender"
                                    required>
                                    <option value="">--select--</option>
                                    
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="others">Others</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Age</label> <input
                                    required type="number" class="form-control" name="age">
                            </div>

                            <div class="col-md-6">
                           <label for="inputEmail4" class="form-label">Appointment Date</label> 
                           <input type="date" class="form-control" required name="appoint_date">
                            </div>

                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Email</label> 
                                <input required type="email" class="form-control" name="email">
                            </div>

                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Phone No</label> 
                                <input maxlength="10" required type="text" class="form-control"
                                    name="phno">
                            </div>

                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Diseases</label>
                                <input required type="text" class="form-control" name="diseases">
                            </div>

                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Specialist</label> 
                         
                         <select required class="form-control" name="doct">
                         <option value="">--select--</option>
  
  <%
     DoctorDao dao = new DoctorDao(DBConnect.getConn());
     List<Doctor> list = dao.getAllDoctor();
     for (Doctor d : list) {
   %>
     <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>) </option>
     <%
       }
      %>

                         </select>
                         
                            </div>

                            <div class="col-md-12">
                                <label>Full Address</label>
                                <textarea required name="address" class="form-control" rows="3"
                                    cols=""></textarea>
                            </div>

                            <c:if test="${empty userObj }">
                                <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                            </c:if>

                            <c:if test="${not empty userObj }">
                                <button class="col-md-6 offset-md-3 btn btn-warning p-2">Submit</button>
                            </c:if>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <%@include file="component/footer.jsp"%>

</body>
</html>
