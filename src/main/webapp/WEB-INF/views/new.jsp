<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới</title>
<jsp:include page="link.jsp"></jsp:include>
<%--  <link href="<c:url value="/resources/css/bootstrap.min.vs4.css"/>" rel="stylesheet"> --%>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
 <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    /> 
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
<style>
.dropdown:hover {
	transition: 0.1s;
	color: cadetblue;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="sidebar.jsp"></jsp:include>
			<div class="content col p-4">
				<h2>Thêm mới sự cố máy bay</h2>
				<div class="dropdown-divider"></div>
				<div class=" border rounded mt-3">
					<div class="pt-3 pl-3 border-bottom bg-light">
						<p class="font-weight-bold">Thông tin sự cố</p>

					</div>
					<div class="bg-white p-3">
						<form:form action="${pageContext.request.contextPath}/add"
							id="formId" method="post" modelAttribute="suCoDto">
							<div class="form-group">
								<form:label path="maSuCo" class="font-weight-bold">Mã sự cố</form:label>
								<form:input type="text" class="form-control" path="maSuCo"
									placeholder="Nhập mã sự cố" />
								<form:errors class="text-danger" path="maSuCo"/>
							</div>
							<div class="form-group">
								<form:label path="soHieuMayBay" class="font-weight-bold">Số hiệu máy bay</form:label>
								<form:input type="text" class="form-control" path="soHieuMayBay"
									placeholder="Nhập số hiệu máy bay"/>
									<form:errors class="text-danger" path="soHieuMayBay"/>
							</div>
							<div class="form-group">
								<label for="ngayGioSuCo" class="font-weight-bold">Ngày
									giờ sự cố</label>
								<form:input type="datetime-local" class="form-control"
									path="ngayGioSuCo"/>
									<form:errors class="text-danger" path="ngayGioSuCo"/>

							</div>
							<div class="form-group">
								<form:label path="maLoiKT" class="font-weight-bold">Tên lỗi kỹ thuật</form:label>
								<form:select type="text" class="form-control" path="maLoiKT"
									required="true">
									<option value="" disabled selected>--Chọn--</option>
									<c:forEach items="${loiKTList}" var="item">
										<option value="${item.maLoiKT}">${item.maLoiKT}-
											${item.tenLoiKT}</option>
									</c:forEach>
								</form:select>
								<form:errors class="text-danger" path="maLoiKT"/>

							</div>
							<div class="form-group">
								<form:label path="mucDo" class="font-weight-bold">Mức độ khẩn thiết</form:label>
								<form:select type="text" class="form-control" path="mucDo">
									<option value="" disabled selected>--Chọn--</option>
									<option value="Cao">Cao</option>
									<option value="Thấp">Thấp</option>
									<option value="Trung bình">Trung bình</option>
								</form:select>
								<form:errors class="text-danger" path="mucDo"/>
							</div>
							<div class="form-group">
								<label for="ngayGioKhacPhuc" class="font-weight-bold">Ngày
									giờ khắc phục</label>
								<form:input type="datetime-local" class="form-control"
									path="ngayGioKhacPhuc"/>
									<form:errors class="text-danger" path="ngayGioKhacPhuc"/>

							</div>
							<div class="form-group">
								<form:label path="trangThai" class="font-weight-bold">Trạng thái</form:label>
								<form:select type="text" class="form-control" path="trangThai">
									<option selected value="Chưa khắc phục">Chưa khắc phục</option>
									<option value="Đã khắc phục">Đã khắc phục</option>
								</form:select>
								<form:errors class="text-danger" path="trangThai"/>
							</div>
							<div class="form-group">
								<form:label path="maThietBi" class="font-weight-bold">Tên thiết bị</form:label>
								<form:select type="text" class="form-control" path="maThietBi">
									<option value="" disabled selected>--Chọn--</option>
									<c:forEach items="${thietBiList}" var="item">
										<option value="${item.maThietBi}">${item.maThietBi}-
											${item.tenThietBi}</option>
									</c:forEach>
								</form:select>
								<form:errors class="text-danger" path="maThietBi"/>

							</div>
							<div class="form-group">
								<label for="soLuong" class="font-weight-bold">Số lượng</label>
								<form:input type="number" class="form-control" path="soLuong" />
								<form:errors class="text-danger" path="soLuong"/>
							</div>
							<div class="form-group">
								<form:button type="submit" class="btn btn-outline-secondary">Submit Button</form:button>
								<input type="reset" class="btn btn-outline-secondary"
									value="Reset Button" />
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="script.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$.validator.addMethod("dateAfter",
							function(value, element, params) {

								if (!/Invalid|NaN/.test(new Date(value))) {
									return new Date(value) >= new Date(
											$(params).val());
								}

								return isNaN(value)
										&& isNaN($(params).val())
										|| (Number(value) >= Number($(params)
												.val()));
							}, 'Must be greater than {0}.');
					$.validator.addMethod("dateBefore", function(value,
							element) {

						if (!/Invalid|NaN/.test(new Date(value))) {
							return new Date(value) < new Date();
							// return new Date(value) < new Date($(params).val());
						}
						// return isNaN(value) && isNaN($(params).val())
						// || (Number(value) < Number($(params).val()));

					}, 'Must be smaller than today.');
					$('#formId').validate({
							rules: {
								maSuCo: {
									required: true,
								},
								soHieuMayBay: {
									required: true,
								},
								maLoiKT: {
									required: true,
								},
								mucDo: {
									required: true,
								},
								ngayGioSuCo: {
									required: true,
									dateBefore: true
								},
								ngayGioKhacPhuc: {
									dateAfter: "#ngayGioSuCo"
								}
							},
							messages: {
								maSuCo: {
									required: "Vui lòng nhập mã sự cố.",
								},
								soHieuMayBay: {
									required: "Vui lòng nhập số hiệu máy bay.",
								},
								maLoiKT: {
									required: "Vui lòng chọn tên lỗi kỹ thuật.",
								},
								mucDo: {
									required: "Vui lòng chọn mức độ.",
								},
								ngayGioSuCo: {
									required: "Vui lòng nhập ngày giờ sự cố.",
									dateBefore: "Ngày giờ sự cố phải nhỏ hơn ngày hiện tại"
								},
								ngayGioKhacPhuc: {
									dateAfter: "Ngày giờ khắc phục phải lớn hơn hoặc bằng ngày giờ sự cố"
								}
							},
							errorClass: 'text-danger', // Add your custom error class
					        errorElement: 'small', // Specify the HTML element for error messages
					        errorPlacement: function (error, element) {
					            // Customize error message placement if needed
					            error.appendTo(element.parent()); // Appends error message to the parent element
					        }
						
					})
				})
	</script>
</body>
</html>