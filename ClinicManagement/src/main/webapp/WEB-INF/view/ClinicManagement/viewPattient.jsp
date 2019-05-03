<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<style type="text/css">
p {
	border-bottom: #ff0000 solid 2px;
}

input[type=search] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	font-family: inherit;
	font-size: 100%;
}

input::-webkit-search-decoration, input::-webkit-search-cancel-button {
	display: none; /* remove the search and cancel icon */
}
/* search input field */
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
/* placeholder */
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

<h1 style="color: blue;">Thông Tin Bệnh Nhân</h1>
<div class="example">
	<div class="row">
		<div class="col-md-9"></div>
		<div class="col-md-3">
			<button type="button" class="btn btn-default">Đặt Lịch</button>
			<a href="/ClinicManagement/Home"><button type="button"
					class="btn btn-primary">Khám Bệnh</button></a> <a
				href="/ClinicManagement/addPattient/${seriesCode}&${code}"><button type="button"
					class="btn btn-success">Thêm Mới</button></a>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<p>Thông Tin Bệnh Nhân</p>
		<!--Table No Series Line -->
		<section id="configuration">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<div class="card-header">
								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
										<li><a data-action="close"><i class="ft-x"></i></a></li>
									</ul>
								</div>
							</div>
							<div>
								<table
									class="table display nowrap table-striped table-bordered scroll-horizontal-vertical dataTable no-footer">
									<thead>
										<tr style="font-weight: bold">
											<th><input type='checkbox' name='name[]' id='check_all'
												value='' /></th>
											<th>STT</th>
											<th>Pattient No_</th>
											<th>Fist Name</th>
											<th>Last Name</th>
											<th>Sex</th>
											<th>Height</th>
											<th>Weight</th>
											<th>Blood Group</th>
											<th>Birthday</th>
											<th>Ethnic No_</th>
											<th>Phone Number</th>
											<th>Email</th>
											<th>Religion</th>
											<th>Marital Status</th>
											<th>No_ ID</th>
											<th>Issued by</th>
											<th>Issued Date</th>
											<th>Insurance No_</th>
											<th>Address</th>
											<th>Commune No_</th>
											<th>District No_</th>
											<th>Province No_</th>
											<th>Job Description</th>
											<th>Workplace</th>
											<th>Object type</th>
											<th>Current Address</th>
											<th>Current Commune No_</th>
											<th>Current District No_</th>
											<th>Current Province No_</th>
											<th>Created By</th>
											<th>Created Date</th>
											<th>Modified By</th>
											<th>Modified Date</th>
											<th>Clinic No_</th>
											<th>Company No_</th>
											<th>Company No_</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="listpattient" items="${ListPattient}"
											varStatus="counter">
											<tr>
												<td><input type='checkbox' name='name[]' id='check_all'
													value='rowID' /></td>
												<td>${counter.index + 1}</td>
												<td><a href="#">${listpattient.no}</a></td>
												<td>${listpattient.fistName}</td>
												<td>${listpattient.lastName}</td>
												<td style='text-align: left;'><c:if
														test="${listpattient.sex == 0}">Nam</c:if> <c:if
														test="${listpattient.sex == 1}">Nữ</c:if></td>
												<td>${listpattient.height}</td>
												<td>${listpattient.weight}</td>
												<td style='text-align: left;'><c:if
														test="${listpattient.bloodGroup == 0}">O</c:if> <c:if
														test="${listpattient.bloodGroup == 1}">A</c:if> <c:if
														test="${listpattient.bloodGroup == 2}">B</c:if> <c:if
														test="${listpattient.bloodGroup == 3}">AB</c:if></td>
												<td>${listpattient.birthday}</td>
												<td>${listpattient.ethnicity.ethnicName}</td>
												<td>${listpattient.phoneNumber}</td>
												<td>${listpattient.email}</td>
												<td>${listpattient.religion}</td>
												<td style='text-align: left;'><c:if
														test="${listpattient.maritalStatus == 0}">Độc Thân</c:if>
													<c:if test="${listpattient.maritalStatus == 1}">Đã Kết Hôn</c:if>
												</td>
												<td>${listpattient.no_ID}</td>
												<td>${listpattient.issuedby}</td>
												<td>${listpattient.issuedDate}</td>
												<td>${listpattient.insuranceNo_}</td>
												<td>${listpattient.address}</td>
												<td>${listpattient.communeNo_}</td>
												<td>${listpattient.districtNo_}</td>
												<td>${listpattient.provinceNo_}</td>
												<td>${listpattient.jobDescription}</td>
												<td>${listpattient.workplace}</td>
												<td style='text-align: left;'><c:if
														test="${listpattient.objecttype == 0}">Nội Trú</c:if> <c:if
														test="${listpattient.objecttype == 1}">Ngoại Trú</c:if></td>
												<td>${listpattient.currentAddress}</td>
												<td>${listpattient.currentCommuneNo_}</td>
												<td>${listpattient.currentDistrictNo_}</td>
												<td>${listpattient.currentProvinceNo_}</td>
												<td>${listpattient.createdBy}</td>
												<td>${listpattient.createdDate}</td>
												<td>${listpattient.modifiedBy}</td>
												<td>${listpattient.modifiedDate}</td>
												<td>${listpattient.clinicNo}</td>
												<td>${listpattient.companyNo}</td>
												<td><a class="btn btn-outline-success round"
													href="/ClinicManagement/addMedicalRecord/${listpattient.no}">Sửa
												</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<script type="text/javascript">
			var genderMaleCheckbox = document.getElementById('check_all');
			var isGenderMale = genderMaleCheckbox.checked;
		</script>
		<!-- end -->
	</div>
</div>
<hr>
<div class="row">
	<div class="col-md-6">
		<p>Lịch Sử Khám Bệnh</p>
		<section id="configuration">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<div class="card-header">
								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
										<li><a data-action="close"><i class="ft-x"></i></a></li>
									</ul>
								</div>
							</div>
							<div>
								<table
									class="table display nowrap table-striped table-bordered scroll-horizontal-vertical dataTable no-footer">
									<thead>
										<tr>
											<th>Date Care</th>
											<th>Doctor No_</th>
											<th>Doctor Name</th>
											<th>Diagnosis</th>
											<th>Diagnosis Detail</th>
										</tr>
									</thead>

								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="col-md-6">
		<p>Lịch Sử Cấp Thuốc</p>
		<section id="configuration">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<div class="card-header">
								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
										<li><a data-action="close"><i class="ft-x"></i></a></li>
									</ul>
								</div>
							</div>
							<div>
								<table
									class="table display nowrap table-striped table-bordered scroll-horizontal-vertical dataTable no-footer">
									<thead>
										<tr>
											<th>No_</th>
											<th>Posting Date</th>
											<th>Re-issuance Count</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<hr>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />