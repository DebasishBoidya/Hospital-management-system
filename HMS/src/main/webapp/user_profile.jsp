<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="com.user.servlet.UserLogin"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Profile</title>
    <%@ include file="component/allcss.jsp" %>
    <style>
        .profile-detail {
            margin-bottom: 10px;
        }
        .profile-detail strong {
            width: 150px;
            display: inline-block;
        }
        #profileForm {
            display: none; /* Hide the form initially */
        }
        .center-card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 500px;
            padding: 20px;
        }
        .img-fluid {
            width: 120px;
            height: 120px;
        }
        .button-center {
            display: flex;
            justify-content: center;
        }
body{
        background-color:#578E7E;}
    </style>
</head>
<body>
    
    <%@ include file="component/navbar.jsp" %>
<br><br>
    <div class="container center-card ">
        <div class="card p-4">
            <h2 class="text-center">My Profile</h2>
            <div id="profileImage" class="d-flex justify-content-center align-items-center mb-4">
                <img src="img/usr.jpg" alt="Centered Image" class="img-fluid">
            </div>
            <div id="profileDetails" class="mt-4 m-4">
                <div class="profile-detail"><strong>Full Name:</strong> <span id="profileFullName"></span></div>
                <div class="profile-detail"><strong>Email:</strong> <span id="profileEmail"></span></div>
                <div class="profile-detail"><strong>Gender:</strong> <span id="profileGender"></span></div>
                <div class="profile-detail"><strong>Date of Birth:</strong> <span id="profileDob"></span></div>
                <div class="profile-detail"><strong>Address:</strong> <span id="profileAddress"></span></div>
                <button type="button" id="editProfileBtn" class="btn btn-primary">Edit</button>
            </div>

            <!-- Edit Form -->
            <form id="profileForm">
                <div class="mb-3">
                    <label for="fullName" class="form-label"><strong>Full Name:</strong></label>
                    <input type="text" id="fullName" class="form-control" value="${userObj.fullName}" disabled>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"><strong>Email:</strong></label>
                    <input type="email" id="email" class="form-control" value="${userObj.email}" disabled>
                </div>
                <div class="mb-3">
                    <label for="gender" class="form-label"><strong>Gender:</strong></label>
                    <select id="gender" class="form-control">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="dob" class="form-label"><strong>Date of Birth:</strong></label>
                    <input type="date" id="dob" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label"><strong>Address:</strong></label>
                    <textarea id="address" class="form-control" rows="3" placeholder="Enter your address"></textarea>
                </div>
                <button type="button" id="updateProfileBtn" class="btn btn-success">Update</button>
            </form>
        </div>
    </div>

    <script>
    const userEmail = '${userObj.email}'; // Get user email or any unique identifier

    // Load profile data from local storage on page load
    window.onload = function() {
        const profileData = JSON.parse(localStorage.getItem(userEmail + '_profileData'));
        if(profileData) {
            document.getElementById('profileFullName').innerText = profileData.fullName || '${userObj.fullName}';
            document.getElementById('profileEmail').innerText = profileData.email || '${userObj.email}';
            document.getElementById('profileGender').innerText = profileData.gender || '';
            document.getElementById('profileDob').innerText = profileData.dob || '';
            document.getElementById('profileAddress').innerText = profileData.address || '';
        }
    };

    document.getElementById('editProfileBtn').addEventListener('click', function() {
        // Hide profile details and image, show the form
        document.getElementById('profileDetails').style.display = 'none';
        document.getElementById('profileImage').style.display = 'none';
        document.getElementById('profileForm').style.display = 'block';

        // Load current profile data into the form
        const profileData = JSON.parse(localStorage.getItem(userEmail + '_profileData'));
        if(profileData) {
            document.getElementById('fullName').value = profileData.fullName || '${userObj.fullName}';
            document.getElementById('email').value = profileData.email || '${userObj.email}';
            document.getElementById('gender').value = profileData.gender || '';
            document.getElementById('dob').value = profileData.dob || '';
            document.getElementById('address').value = profileData.address || '';
        }
    });

    document.getElementById('updateProfileBtn').addEventListener('click', function() {
        // Get form values
        const fullName = document.getElementById('fullName').value;
        const email = document.getElementById('email').value;
        const gender = document.getElementById('gender').value;
        const dob = document.getElementById('dob').value;
        const address = document.getElementById('address').value;

        // Update profile details on the page
        document.getElementById('profileFullName').innerText = fullName;
        document.getElementById('profileEmail').innerText = email;
        document.getElementById('profileGender').innerText = gender;
        document.getElementById('profileDob').innerText = dob;
        document.getElementById('profileAddress').innerText = address;

        // Save profile data to local storage with user-specific key
        const profileData = {
            fullName: fullName,
            email: email,
            gender: gender,
            dob: dob,
            address: address
        };
        localStorage.setItem(userEmail + '_profileData', JSON.stringify(profileData));

        // Hide the form and show profile details and image
        document.getElementById('profileForm').style.display = 'none';
        document.getElementById('profileDetails').style.display = 'block';
        document.getElementById('profileImage').style.display = 'block';
    });
    </script>
</body>
</html>
