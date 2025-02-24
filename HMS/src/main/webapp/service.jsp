<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="component/allcss.jsp"%>

<title>service support</title>
<style>
h1{
font-size:60px;
font-family: "Times New Roman";
color:white;
}

.section{
background-image: url('img/bg2.jpg');
}
.container{
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    background-size: cover;
}
.light-bg-waves-center {
    background-position: 50%;
    background-size: cover;
    background-repeat: no-repeat;
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
.col-md-3 {
        flex: 0 0 25%;
        max-width: 25%;
    }
.coe-box {
    background-color: #e6f6ff;
    margin:20px;
    padding: 20px;
    min-height: 250px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;	
    -webkit-transition: all .5s linear;;
    border-radius:8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
.coe-box:hover {
            background-color: #FFD65A;
        }

</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<section class="section light-bg-waves-center mt-5">

    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-2 text-center p-5 ">
            <br><br>
                <h1>Support Services</h1>
                </div>
        </div>
                    <div class="row ">                  
                    <div class="col-md-3 mb-3">
                        <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2023/06/Physiotherapy2.png" alt="Physiotherapy" class="img-fluid mb-2">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Physiotherapy</p>
                            </div>
                    </div>
                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <i class="fa-solid fa-user-doctor " style="font-size: 70px;"></i>
                                <p class="lead fs-4 mt-3" style="color: black; font-weight:500;">All Types of Specialists</p>
                            </div>
                    </div> 
                                  
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                               <i class="fa-solid fa-stethoscope" style="font-size: 60px;"></i>
                                <p class="lead fs-4 mt-3" style="color: black; font-weight:500;">Out Patient Service</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2023/06/Home-Health-Care2.png" alt="Home Health Care" class="img-fluid mb-3" style="filter: invert(0); width:80px; height:80px;">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Home Health Care</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2023/06/Emergency-Care2.png" alt="Emergency Care 24*7" class="img-fluid mb-3" style="filter: invert(0);">
                                <p class="lead fs-4 " style="color: black;font-weight:500;">Emergency Care 24*7</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/cancer-ribbon.png" alt="Pink Hope" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Pink Hope</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/diet-icon-new.png" alt="Diet" class="img-fluid mb-3" style="filter: invert(0);">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Diet</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/microscope-icon-new.png" alt="Clinical Research Department" class="img-fluid mb-3" style="filter: invert(0);">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Clinical Research Department</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/radiology-imaging-icon-new.png" alt="Radiology and Imaging" class="img-fluid mb-3" style="filter: invert(0);">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Radiology and Imaging</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/pharmacy-new-icon.png" alt="Pharmacy" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Pharmacy</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/day-care-icon-new.png" alt="Day Care" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Day Care</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/12/pathology-icon-new.png" alt="Pathology" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Pathology</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/11/ambulance-new-icon.png" alt="Ambulance Service" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Ambulance Service</p>
                            </div>
                    </div>
                                    
                    <div class="col-md-3 mb-3">
                            <div class="col-md-12 coe-box text-center border-radius-6">
                                <img src="https://www.hcghospitals.in/wp-content/uploads/2022/10/icu-icon-new2.png" alt="Intensive Care" class="img-fluid mb-3">
                                <p class="lead fs-4 " style="color: black; font-weight:500;">Intensive Care</p>
                            </div>
                    </div>
                            </div>
                            </div>
                            
</section>
</body>
</html>