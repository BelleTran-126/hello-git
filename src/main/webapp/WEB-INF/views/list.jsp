<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Content</title>
<jsp:include page="link.jsp"></jsp:include>

<style>

.dropdown:hover {
	transition: 0.1s;
	color: cadetblue;
}
</style>
</head>
<body>
	<div class="container-pluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="sidebar.jsp"></jsp:include>
			<div class="content col p-4">
				<h2>Danh sách sự cố</h2>
				<div class="dropdown-divider"></div>
				<div class=" border rounded mt-3">
					<div class="pt-3 pl-3 border-bottom bg-light">
						<p class="font-weight-bold">Bảng danh sách sự cố</p>

					</div>
					<div class="bg-white p-3">
						<table class="table table-hover table-striped table-bordered">
							<thead>
								<tr>
									
									<th>Mã sự cố</th>
									<th>Số hiệu máy bay</th>
									<th>Ngày giờ sự cố</th>
									<th>Tên lỗi kỹ thuật</th>
									<th>Mức độ khẩn thiết</th>
									<th>Ngày giờ khắc phục</th>
									<th>Trạng thái</th>
									<th>Mã thiết bị</th>
									<th>Tên thiết bị</th>
									<th>Số lượng</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="detail" items="${detailList}" varStatus="status">
									<tr>
										<td>${detail.id.maSuCo}</td>
										<td>${detail.suCoMayBay.soHieuMayBay}</td>
										<td>${detail.suCoMayBay.ngayGioSuCo}</td>
										<td>${detail.suCoMayBay.loiKyThuat.tenLoiKT}</td>
										<td>${detail.suCoMayBay.mucDo}</td>
										<td>${detail.suCoMayBay.ngayGioKhacPhuc}</td>
										<td>${detail.suCoMayBay.trangThai}</td>
										<td>${detail.id.maThietBi}</td>
										<td>${detail.thietBi.tenThietBi}</td>
										<td>${detail.soLuong}</td>
										<%-- <td>
										<!-- Button trigger modal --> 
										<a type="button" data-toggle="modal"
										data-target="#${status.index}"> <i
											class="fa-solid fa-pen-to-square mr-2"> </i></a> <!-- Button trigger modal -->
										<a type="button" data-toggle="modal"
										data-target="#exampleModal${status.index}"> <i
											class="fa-solid fa-trash-can"></i>
									</a>
									</td> --%>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="script.jsp"></jsp:include>
</body>
</html>