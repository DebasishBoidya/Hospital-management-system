<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<style>

.sbar{
margin-left: 100px;}
.sbar .btn {
        width: 180px;
    }
    
.hospital-name {
    color: #ff6600; /* Bright orange color */
    font-family: 'Cooper Black', sans-serif; /* Use Cooper Black font */
    font-size: 25px; /* Adjust font size if needed */
    font-weight: bold; /* Make text bold if required */
}

</style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-light fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><img src="img/hosplogo.jpg" width="80px" height="50px">
        <span class="hospital-name">Remedy Hospital</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <form action="search.jsp" class="sbar d-flex" role="search">
                    <button type="sumit" class="btn btn-outline-success rounded-pill">
                        <i class="fa fa-search" style="font-size: 20px; margin-right:12px;" aria-hidden="true"></i>Search
                    </button>	
                </form>
            </ul>

            <ul class="navbar-nav ms-auto mb-1 mb-lg-0">
                <c:if test="${empty userObj}">
                    <li class="nav-item"><a class="nav-link active text-dark fs-5 me-2" aria-current="page" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-5 me-2" aria-current="page" href="about_us.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-5 me-2" aria-current="page" href="service.jsp">Services</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-5 me-2" aria-current="page" href="user_appointment.jsp">Appointment</a></li>
                    
                    <div class="dropdown">
                        <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" style="width:140px; margin-top:5px ;margin-right:10px;" aria-expanded="false">
                            <i class="fa fa-sign-in" style="font-size: 20px; margin-right:12px;" aria-hidden="true" ></i>LOGIN
                        </button>
                        <ul class="dropdown-menu">
                            <li class="nav-item"><a class="dropdown-item nav-link text-dark fs-6 me-2 text-center" href="user_login.jsp">USER</a></li>
                            <li class="nav-item"><a class="dropdown-item nav-link text-dark fs-6 me-2 text-center" href="doctor_login.jsp">DOCTOR</a></li>
                            <li class="nav-item"><a class="dropdown-item nav-link text-dark fs-6 me-2 text-center" href="admin_login.jsp">ADMIN</a></li>
                        </ul>
                    </div>
                </c:if>

                <c:if test="${not empty userObj}">
                    <li class="nav-item"><a class="nav-link active text-dark fs-7 me-2" aria-current="page" href="index.jsp">HOME</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-7 me-2" aria-current="page" href="about_us.jsp">ABOUT US</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-7 me-2" aria-current="page" href="user_appointment.jsp">BOOK APPOINTMENT</a></li>
                    <li class="nav-item"><a class="nav-link active text-dark fs-7 me-2" aria-current="page" href="view_appointment.jsp" >VIEW APPOINTMENT</a></li>

                    <div class="dropdown">  
                                       
                    <button class="btn btn-info dropdown-toggle fs-16" type="button"
                        id="dropdownMenuButton1" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="fas fa-user-circle"></i> ${userObj.fullName}
                    </button>                       
                        
                        
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="user_profile.jsp">My Profile</a></li>
                            <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
                        </ul>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
