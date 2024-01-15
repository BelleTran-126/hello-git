<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
 <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
    <jsp:include page="link.jsp"></jsp:include>
    <style type="text/css">
    .fa-2xl{
    font-size: 100px;
    opacity: 0.5;
    }
    .center-content{
    height: 60vh;
    }
    </style>
</head>
<body>
<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="sidebar.jsp"></jsp:include>
			<div class="center-content col d-flex justify-content-center align-items-center text-secondary">
			<i class="fa-solid fa-house fa-2xl mr-3"></i>
			<h2 style="opacity: 0.5">Home page</h2>
			</div>
			</div>

	</div>
	<jsp:include page="script.jsp"></jsp:include>
    
</body>
</html>