/**
 * 
 */
$('#dataTable-listMember').dataTable({
	"ordering": true,
	searching: true,
	lengthChange: false,
	pageLength: 4,
	bInfo: false,
});

/**
 * 
 */

$(document).ready(function() {
	// focus vào input
	$('input').on('focus', function() {
		$(this).removeClass('is-invalid');
	});

	/*$('form').on('submit', function(event) {
		let flag = true;
		$.each($('input'), function() {
			const input = $(this).val();
			if (input == '' || input == null) {
				$(this).addClass('is-invalid');
				flag = false;
			}
		})
		console.log(flag)
		if (!flag) {
			event.preventDefault();
		}
	});*/
	//validate input blank

	$('#form-1').on('submit', function(event) {
		let flag = true;
		$.each($('input'), function() {
			const input = $(this).val();
			if (input == '' || input == null) {
				$(this).addClass('is-invalid');
				flag = false;
			}
		})
		const maKH = $('input[name="maKH"]').val();
		if (!(/^KH\d{5}$/.test(maKH))) {
			$('input[name="maKH"]').addClass('is-invalid');
			flag = false;
			console.log(1)
		}
		const phone = $('input[name="soDienThoai"]').val();
		if (!(/^(0|\(84\)\+)9[01]\d{7}$/.test(phone))) {
			$('input[name="soDienThoai"]').addClass('is-invalid');
			flag = false;
			console.log(2)
		}



		console.log(flag)
		if (!flag) {
			event.preventDefault();
		}
	});


	$('#form-3').on('submit', function(event) {
		let flag = true;
		$.each($('input'), function() {
			const input = $(this).val();
			if (input == '' || input == null) {
				$(this).addClass('is-invalid');
				flag = false;
			}
		})
		const maDV = $('input[name="maDV"]').val();
		if (!(/^DV\d{5}$/.test(maDV))) {
			$('input[name="maDV"]').addClass('is-invalid');
			flag = false;
			console.log(3)
		}
		const donGia = $('input[name="donGia"]').val();
		if (donGia < 0) {
			$('input[name="donGia"]').addClass('is-invalid');
			flag = false;
			console.log(5)
		}
		console.log(flag)
		if (!flag) {
			event.preventDefault();
		}
	});
	$('#form-4').on('submit', function(event) {
		let flag = true;
		$.each($('input'), function() {
			const input = $(this).val();
			if (input == '' || input == null) {
				$(this).addClass('is-invalid');
				flag = false;
			}
		})
		const thoiGianSuDung = $('input[name="thoiGianSuDung"]').val();
		if (thoiGianSuDung < 0) {
			$('input[name="thoiGianSuDung"]').addClass('is-invalid');
			flag = false;
			console.log(6)
		}
		console.log(flag)
		if (!flag) {
			event.preventDefault();
		}
	});
	$('#form-5').on('submit', function(event) {
		let flag = true;
		$.each($('input'), function() {
			const input = $(this).val();
			if (input == '' || input == null) {
				$(this).addClass('is-invalid');
				flag = false;
			}
		})

		const soLuong = $('input[name="soLuong"]').val();
		if (soLuong < 0) {
			$('input[name="soLuong"]').addClass('is-invalid');
			flag = false;
			console.log(4)
		}
		console.log(flag)
		if (!flag) {
			event.preventDefault();
		}
	});
})
/*// Khởi tạo DataTable
var table = $('#dataTable-listMember').DataTable({
	"ordering": true,
	searching: true,
	lengthChange: false,
	pageLength: 4,
	bInfo : false,
});

// Thêm một ô input tìm kiếm cho mỗi cột
$('#dataTable-listMember thead th').each(function() {
	var title = $(this).text();
	$(this).html(title+'<br><input type="text" placeholder="Tìm kiếm '+title+'" />');
});

// Xử lý sự kiện tìm kiếm cho mỗi cột
table.columns().every(function() {
	var that = this;
	$('input', this.header()).on('keyup change clear', function() {
		if (that.search() !== this.value) {
			that.search(this.value).draw();
		}
	});
});*/

