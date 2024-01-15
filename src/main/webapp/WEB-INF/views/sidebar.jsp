<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="border-right bg-light" style="width: 20vw;height: 95dvh;">
	<div class="input-group mb-3 nav-item pt-3 px-3">
		<input type="text" class="form-control" placeholder="Search..."
			aria-label="Search..." aria-describedby="button-addon2">
		<div class="input-group-append">
			<button class="btn btn-outline-secondary" type="button"
				id="button-addon2">
				<i class="fa-solid fa-magnifying-glass"></i>
			</button>
		</div>
	</div>
	<div class="dropdown-divider"></div>
	<div class="nav-item px-3">

		<a href="${pageContext.request.contextPath}/new"><i class="fa-solid fa-table-cells mr-1"></i>Thêm mới sự cố</a>
	</div>
	<div class="dropdown-divider"></div>
	<div class="nav-item px-3">

		<a href="${pageContext.request.contextPath}/list"><i class="fa-solid fa-pen-to-square mr-1"></i>Danh sách sự cố</a>
	</div>
	<div class="dropdown-divider"></div>
</div>