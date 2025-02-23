<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><img src="hosplogo.jpg" width="80px" height="50px">
        <style>
    span {
        color: #ff6600; 
        font-family: 'Cooper Black', sans-serif; 
        font-size: 25px; 
        font-weight: bold;
    }
        </style>

<span>Remedy Hospital</span>
        
        
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link text-dark fs-5 m-3" href="index.jsp">HOME</a></li>
                <li class="nav-item"><a class="nav-link text-dark fs-5 m-3" href="patient.jsp">PATIENT</a></li>
            </ul>

            <form class="d-flex m-2">
                <div class="dropdown">
                    <button class="btn btn-warning dropdown-toggle fs-15" type="button"
                        id="dropdownMenuButton1" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="fas fa-user-circle"></i> ${doctObj.fullName}
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="edit_profile.jsp">Edit Profile</a></li>
                        <li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
                    </ul>
                </div>
            </form>
         
        </div>
    </div>
</nav>
