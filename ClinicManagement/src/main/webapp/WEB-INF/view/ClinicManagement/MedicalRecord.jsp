<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<style type="text/css">
input[type=search] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	font-family: inherit;
	font-size: 100%;
}

input::-webkit-search-decoration, input::-webkit-search-cancel-button {
	display: none;
	/
	remove
	the
	search
	and
	cancel
	icon
	/
}

/
search input field /
input[type=search] {
	background: #ededed url(search-icon.png) no-repeat 9px center;
	border: solid 1px #ccc;
	padding: 9px 10px 9px 32px;
	width: 55px;
	-webkit-border-radius: 10em;
	-moz-border-radius: 10em;
	border-radius: 10em;
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	transition: all .5s;
}

input[type=search]:focus {
	width: 130px;
	background-color: #fff;
	border-color: #6dcff6;
	-webkit-box-shadow: 0 0 5px rgba(109, 207, 246, .5);
	-moz-box-shadow: 0 0 5px rgba(109, 207, 246, .5);
	box-shadow: 0 0 5px rgba(109, 207, 246, .5);
}

/
placeholder /
input:-moz-placeholder {
	color: #999;
}

input::-webkit-input-placeholder {
	color: #999;
}

.example {
	margin: 20px;
}
</style>

<div id="menu">
	<ul>
		<li><a href="#">Information</a></li>
		<li><a href="#">Calendar Check</a></li>
		<li><a href="#">examination history</a></li>
	</ul>
</div>
<h1 style="color: #008B8B;">Hồ Sơ Bệnh Án</h1>
<h5 style="color: #008B8B;">Thông Tin Bệnh Nhân</h5>
<form:form method="POST" action="#" modelAttribute="MedicalRecord">
<table class="table">
	<tbody>
		<tr>
			<th scope="row">Số Thẻ</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Mã Bệnh Nhân</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Họ và Tên</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.fullName}" name="pattient.no" readonly="readonly"
				type="text"></td>
		</tr>
		<tr>
			<th scope="row">Ngày Sinh</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.birthday}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Giới Tính</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.sex}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Tuổi</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
		</tr>
		<tr>
			<th scope="row">Địa Chỉ</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">cân Nặng</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Số điện thoại</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
		</tr>
		<tr>
			<th scope="row">Chiều Cao</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Cân Nặng</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Dị Ứng Thuốc</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
		</tr>
		<tr>
			<th scope="row">Nhóm Máu</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row">Tiền Sử Bệnh</th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
			<th scope="row"></th>
			<td><fmt:formatNumber type="number" var="list.no"
					minIntegerDigits="5" groupingUsed="false" value="${pattient.no}" />
				<input placeholder="Mã nhân viên" class="form-control"
				value="${list.no}" name="pattient.no" readonly="readonly"
				type="text"></td>
		</tr>
	</tbody>
</table>
</form:form>


<h5>
	<a href="#boxnoidung3" aria-expanded="false" data-toggle="collapse"><i
		class="fa fa-pencil-square-o" style="font-size: 24px"></i> Chuẩn Đoán
		- Khám Bệnh</a>
</h5>
<div class="collapse in" id="boxnoidung3">
	<div>
		<p class="card-text">
		<form>
			<table class="table">
				<tbody>
					<tr>
						<th scope="row">Mã Bác Sĩ</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Tên Bác Sĩ</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Ngày Khám</th>
						<td width="300px"><input type="date"
							class="form-control round" id="usr" name="username" /></td>
					</tr>
					<tr>
						<th scope="row">Lý Do Khám</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Nơi Chuyển tới</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row"></th>
						<td width="300px"></td>
					</tr>
				</tbody>
			</table>
		</form>

	</div>
</div>

<h5>
	<a href="#boxnoidung4" aria-expanded=false data-toggle="collapse"><i
		class="fa fa-pencil-square-o" style="font-size: 24px"></i> Thăm Khám
		Lâm Sàng</a>
</h5>
<div class="collapse in" id="boxnoidung4">
	<div>
		<p class="card-text">
		<form>
			<table class="table">
				<tbody>
					<tr>
						<th scope="row">Chiều Cao</th>
						<td width="300px"><input type="number"
							class="form-control round" id="usr" name="username"
							placeholder="VD: 170 cm "></td>
						<th scope="row">Cân Nặng</th>
						<td width="300px"><input type="number"
							class="form-control round" id="usr" name="username"
							placeholder="VD: 69 kg "></td>
						<th scope="row">Mạch(L/P)</th>
						<td width="300px"><input type="number"
							class="form-control round" id="usr" name="username"
							placeholder="VD: 70/Phút "></td>
					</tr>
					<tr>
						<th scope="row">Tim Mạch</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Hô Hấp</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Cơ Xương Khớp</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Thần Kinh</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Tâm Thần</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Tiêu Hóa</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Huyết Áp(mmHg)</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Tuyến Tiết Liệu</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">IBM</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Nhiệt Độ</th>
						<td><input type="number" class="form-control round" id="usr"
							name="username" placeholder="VD: 37 độ C "></td>
						<th scope="row">Nhóm Máu</th>
						<td><select class="input-large form-control round">
								<option value="O" selected="selected">O</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">AB</option>

						</select></td>
						<th scope="row">Khác</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>

<h5>
	<a href="#boxnoidung1" aria-expanded="false" data-toggle="collapse"><i
		class="fa fa-pencil-square-o" style="font-size: 24px"></i> Vấn Đề Về
		Sức Khỏe </a>
</h5>
<div class="collapse mt-4" id="boxnoidung1">
	<div>
		<p class="card-text">
		<form>
			<table class="table">
				<tbody>
					<tr>
						<th scope="row">Quan Sát Tình Trạng</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Vấn Đề Về Tai</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th scope="row">Vấn Đề Về Mắt</th>
						<td width="300px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
					</tr>
					<tr>
						<th scope="row">Vấn Đề Về Ý Thức</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Vấn Đề Khi Tập Thể Dục</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Vấn Đề Ngôn Ngữ</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Vấn Đề Nội Bộ</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Dự Kiến Ngày Sinh</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Vấn Đề Bình Luận</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Tình Trạng Bệnh Nhân</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
						<th scope="row">Chết Ngày</th>
						<td><input type="date" class="form-control round" id="usr"
							name="username" /></td>
						<th scope="row">Tình Trạng Bệnh Nhân Di chuyển</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
					<tr>
						<th scope="row">Ngày Gặp Vấn Đề Về Mắt</th>
						<td><input type="date" class="form-control round" id="usr"
							name="username" /></td>
						<th scope="row">Ngày Gặp Vấn Đề Về Tai</th>
						<td><input type="date" class="form-control round" id="usr"
							name="username" /></td>
						<th scope="row">Ngày Gặp Vấn Đề Về Ngôn Ngữ</th>
						<td><input type="date" class="form-control round" id="usr"
							name="username" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>
<h5>
	<a href="#boxnoidung2" aria-expanded="false" data-toggle="collapse"><i
		class="fa fa-pencil-square-o" style="font-size: 24px"></i> Chuẩn Đoán
		- Kết Luận</a>
</h5>
<div class="collapse in" id="boxnoidung2">
	<div>
		<p class="card-text">
		<form>
			<table class="table">
				<tbody>
					<tr>
						<th width="230px" scope="row">Chuẩn Đoán</th>
						<td width="250px"><input type="text"
							class="form-control round" id="usr" name="username"></td>
						<th width="210px" scope="row">Bệnh Chính</th>
						<td width="250px"><select
							class="input-large form-control round">
								<option value="O" selected="selected">O</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">ABxxxxxxxxxxx</option>
						</select></td>
						<th width="260px" scope="row">Bệnh Kèm</th>
						<td width="250px"><select
							class="input-large form-control round">
								<option value="O" selected="selected">O</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">ABxxxxxxxxxxx</option>
						</select></td>
					</tr>
					<tr>
						<th scope="row">Biến Chứng</th>
						<td><select class="input-large form-control round">
								<option value="O" selected="selected">O</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">ABxxxxxxxxxxx</option>
						</select></td>
						<th scope="row">Ngày Tái Khám</th>
						<td><input type="date" class="form-control round" id="usr"
							name="username" /></td>
						<th scope="row">Kết Luận</th>
						<td><input type="text" class="form-control round" id="usr"
							name="username"></td>
					</tr>
				</tbody>
			</table>
			<table>
				<tr>
					<th scope="row"></th>
					<td></td>
					<th width="200px" scope="row">Lời Khuyên</th>
					<td width="500px"><textarea class="form-control round"
							rows="5" id="comment"></textarea></td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div>
	<h5>
		<a href="#boxnoidung5" aria-expanded="false" data-toggle="collapse"><i
			class="fa fa-pencil-square-o" style="font-size: 24px"></i> Kê Đơn</a>
	</h5>
	<div class="collapse in" id="boxnoidung5">
		<div>
			<p class="card-text">
			<div class="row"
				style="border: 1px solid black; padding: 1px; overflow-x: auto; border-color: #F8F8FF;">
				<p
					style="height: 1px; width: 2600px; border: 0.5px solid blue; border-color: #696969;">
				<table class="table" style="width: 2600px;">
					<thead>
						<tr>
							<th style="width: 190px; text-align: center;">Mã Thuốc</th>
							<th style="width: 190px; text-align: center;">Tên Thuốc</th>
							<th style="width: 190px; text-align: center;">SL/DVT</th>
							<th style="width: 190px; text-align: center;">Đơn Vị THuốc</th>
							<th style="width: 190px; text-align: center;">Mã Liều Lượng</th>
							<th style="width: 190px; text-align: center;">Tổng Tiền</th>
							<th style="width: 190px; text-align: center;">Giá</th>
							<th style="width: 190px; text-align: center;">Tổng Tiền</th>
							<th style="width: 190px; text-align: center;">Số Lượng</th>
							<th style="width: 190px; text-align: center;">Thế VAT</th>
							<th style="width: 190px; text-align: center;">CK % BHYT</th>
							<th style="width: 190px; text-align: center;">Tổng Lượng</th>
							<th style="width: 190px; text-align: center;">Số Lần Cấp Lại
								Toa Thuốc</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<tr>
						</tr>
					</tbody>
				</table>


				<div id="sections">
					<div class="section">
						<table class="table" style="width: 2600px;">
							<thead>
								<tr>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><select
										class="input-large form-control round">
											<option value="O" selected="selected">O</option>
											<option value="A">Axxxxxxxxxxx</option>
											<option value="B">B</option>
											<option value="AB">AB</option>
									</select></td>
									<td style="width: 190px"><select
										class="input-large form-control round">
											<option value="O" selected="selected">O</option>
											<option value="A">Axxxxxxxxxx</option>
											<option value="B">B</option>
											<option value="AB">AB</option>
									</select></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><select
										class="input-large form-control round">
											<option value="O" selected="selected">O</option>
											<option value="A">A</option>
											<option value="B">B</option>
											<option value="AB">ABxxxxxxxxxxx</option>
									</select></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
									<td style="width: 190px"><input type="text"
										class="form-control round" id="usr" name="username"></td>
								</tr>

							</thead>
						</table>

					</div>
				</div>
				<a href="#" class='addsection round'
					style='color: #02988C; font-size: 30px;'>+</a>
			</div>

		</div>
	</div>
	<!-- - -->
	<center>
		<button type="button" class="btn btn-primary">
			<i class="fa fa-save" style="font-size: 24px"></i> Save
		</button>
	</center>
	<!-- -->
</div>

<hr>
<script
	src="<c:url value="/resources/js/scripts/forms/form-jquery.js"/>"></script>
<script src="<c:url value="/resources/js/scripts/forms/form-js.js"/>"></script>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />