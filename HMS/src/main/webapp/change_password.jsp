<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password Page</title>
<%@ include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
    width: 500px;
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    padding: 50px;
    padding-top: 30px;
}
.btns {
    font-size: 20px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    height: 55px;
    text-align: center;
    border: none;
    background-size: 300% 100%;
    border-radius: 50px;
    transition: all .4s ease-in-out;
}
.btns:hover {
    background-position: 100% 0;
    transition: all .4s ease-in-out;
}
.btns {
     background-image: linear-gradient(to right, #009245, #FCEE21, #00A8C5, #D9E021);
    box-shadow: 0 4px 15px 0 rgba(83, 176, 57, 0.75);
}
</style>
</head>
<body>
    <%@ include file="component/navbar.jsp"%>
    <br><br><br><br><br>
    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <h2 class="text-center">Change Password</h2>
                        <c:if test="${ empty userObj }">
                            <c:redirect url="user_login.jsp"></c:redirect>
                        </c:if>
                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success fs-3">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>
                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-5">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
                        <form action="userChangePassword" method="post">
                            <div class="mb-3">
                            <i class="fa-solid fa-lock"></i>
                                <label class="form-label mt-4">Enter New Password</label>
                                <input required name="newPassword" type="password" class="form-control" placeholder="Enter your new password">
                            </div>
                            <div class="mb-3">
                            <i class="fa-solid fa-lock"></i>
                                <label class="form-label">Enter Old Password</label>
                                <input required name="oldPassword" type="password" class="form-control" placeholder="Enter your old password">
                            </div>
                            <input type="hidden" value="${userObj.id }" name="uid">
                            <button type="submit" class="btns col-md-12 mt-3">Change Password</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
