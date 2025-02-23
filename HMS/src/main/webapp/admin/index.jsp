<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<%@include file="../component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.flip-card {
  background-color: transparent;
  perspective: 1000px;
  width: 300px;  /* Adjust the width as needed */
  height: 200px; /* Adjust the height as needed */
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-back {
  transform: rotateY(180deg);
  cursor: pointer; /* Indicates that the back side is clickable */
}

</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
		<h1 class="text-center mb-4 p-4">Admin Dashboard</h1>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<%
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		%>
		
		<div class="row">
			
			<div class="col-md-4 mt-2 ">
  <div class="flip-card" onclick="window.location.href='view_doctor.jsp'">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <div class="card paint-card">
          <div class="card-body text-center text-success"><br>
            <i class="fas fa-user-md fa-3x"></i><br>
            <p class="fs-4 fw-bold text-center">
              Doctor <br>
            </p>
          </div>
        </div>
      </div>
      <div class="flip-card-back">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
          <br>
            <p class="fs-4 text-center">
              Doctor <br><%=dao.countDoctor()%>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="col-md-4 mt-2 ">
  <div class="flip-card" onclick="window.location.href='patient.jsp'">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <div class="card paint-card">
          <div class="card-body text-center text-success"><br>
            <i class="fa-solid fa-bed-pulse fa-3x"></i><br>
            <p class="fs-4 fw-bold text-center">
              Patient <br>
            </p>
          </div>
        </div>
      </div>
      <div class="flip-card-back">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
          <br>
            <p class="fs-4 text-center">
              Patient <br><%=dao.countAppointment()%>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-md-4 mt-2 ">
  <div class="flip-card" >
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <div class="card paint-card">
          <div class="card-body text-center text-success"><br>
            <i class="far fa-calendar-check fa-3x"></i><br>
            <p class="fs-4 fw-bold text-center">
              Appointment <br>
            </p>
          </div>
        </div>
      </div>
      <div class="flip-card-back">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
          <br>
            <p class="fs-4 text-center">
              Total Appointment <br><%=dao.countAppointment()%>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>	

			<div class="col-md-4 mt-2">
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
          <br>
            <i class="fa-solid fa-suitcase-medical fa-3x"></i><br>
            <p class="fs-4 fw-bold text-center">
              Specialist 
            </p>
          </div>
        </div>
      </div>
      <div class="flip-card-back" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <div class="card paint-card">
          <div class="card-body text-center text-success ">
            <p class="fs-4 text-center" ><br>
              Specialist<br><%=dao.countSpecialist()%>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Add Specialist</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
 <div class="modal-body">
        <form action="../addSpecialist" method="post">
          <div class="form-group">
            <label>Enter Specialist Name</label>
            <input type="text" name="specName" class="form-control mt-2">
          </div>
          <div class="text-center mt-3">
            <button type="submit" class="btn btn-primary">Add</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="col-md-4 mt-2 ">
  <div class="flip-card" onclick="window.location.href='user_details.jsp'">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <div class="card paint-card">
          <div class="card-body text-center text-success"><br>
            <i class="fas fa-user-circle fa-3x"></i><br>
            <p class="fs-4 fw-bold text-center">
              User <br>
            </p>
          </div>
        </div>
      </div>
      <div class="flip-card-back">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
          <br>
            <p class="fs-4 text-center">
              User <br><%=dao.countUSer()%>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


		</div>
	</div>




</body>
</html>