<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-light ">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img src="hosplogo.jpg" width="80px" height="50px"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		<div class="collapse navbar-collapse " id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link text-dark active fs-5 m-3" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link text-dark active fs-5 m-3" href="doctor.jsp">DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link text-dark active fs-5 m-3" href="view_doctor.jsp">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link text-dark active fs-5 m-3" href="patient.jsp">PATIENT</a></li>
                <li class="nav-item"><a class="nav-link text-dark active fs-5 m-3" href="user_details.jsp">USERS</a></li>

			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle p-2" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false" style="margin-right:60px;width:160px;">ADMIN</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>