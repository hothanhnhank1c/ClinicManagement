<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<!-- Table No Series -->
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
					<h3 class="content-header-title mb-0">NO SERIES</h3>
					<br>
					<div>
						<div>
							<a class="btn btn-outline-success round btn-min-width mr-1 mb-1"
								href="/NoSeries/showFormAddNoSeries"> Thêm Mới </a>
						</div>
						<table class="table table-hover table-bordered zero-configuration">
							<thead>
								<tr>
									<th>STT</th>
									<th>Series Code</th>
									<th>Description</th>
									<th>Defaul No</th>
									<th>Manual No</th>
									<th>Date Order</th>
									<th>Block</th>
									<th>Function</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ListNoSeries" items="${ListNoSeries}" begin="0"
									varStatus="counter">
									<tr>
										<td>${counter.index + 1}</td>
										<td><a
											href="/MasterData/ListMasterData/${ListNoSeries.seriesCode}">${ListNoSeries.seriesCode}</a></td>
										<td>${ListNoSeries.description}</td>
										<td>${ListNoSeries.defaultNos}</td>
										<td>${ListNoSeries.manualNos}</td>
										<td>${ListNoSeries.dateOrder}</td>
										<td>${ListNoSeries.block}</td>
										<td><a class="btn btn-outline-danger round"
											onclick="return confirm('Bạn có muốn xóa sinh viên này?');"
											href="/NoSeries/delete/${ListNoSeries.rowID }">Xoá</a> <a
											class="btn btn-outline-success round"
											href="/NoSeries/update/${ListNoSeries.rowID}">Sửa </a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<script>
							function canhbao() {
								return confirm("Bạn Có Chắc Muốn Xóa Không?");
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end -->

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
					<h3 class="content-header-title mb-0">NO SERIES LINE</h3>
					<br>
					<div>
						<table
							class="table display nowrap table-striped table-bordered scroll-horizontal-vertical dataTable no-footer">
							<thead>
								<tr>
									<th>STT</th>
									<th>Series Code</th>
									<th>Code</th>
									<th>Stating No</th>
									<th>Ending No</th>
									<th>Warning No</th>
									<th>Increment By No</th>
									<th>Last No Used</th>
									<th>Proposal No</th>
									<th>Last Date Used</th>
									<th>External Last No Used</th>
									<th>External Starting No</th>
									<th>External Increment By No</th>
									<th>Responsibility Center</th>
									<th>Block</th>
									<th>Description</th>
									<th>Location Code</th>
									<th>Default Customer</th>
									<th>User ID</th>
									<th>External Ending No</th>
									<th>Type</th>
									<th>Tax Liable</th>
									<th>Posting Group</th>
									<th>Funtion</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ListNoSeriesLine" items="${ListNoSeriesLine}">
									<tr>
										<td>${ListNoSeriesLine.rowID}</td>
										<td>${ListNoSeriesLine.seriesCode}</td>
										<td>${ListNoSeriesLine.code}</td>
										<td>${ListNoSeriesLine.startingNo}</td>
										<td>${ListNoSeriesLine.endingNo}</td>
										<td>${ListNoSeriesLine.warningNo}</td>
										<td>${ListNoSeriesLine.incrementbyNo}</td>
										<td>${ListNoSeriesLine.lastNoUsed}</td>
										<td>${ListNoSeriesLine.proposalNo}</td>
										<td>${ListNoSeriesLine.lastDateUsed}</td>
										<td>${ListNoSeriesLine.extLastNoUsed}</td>
										<td>${ListNoSeriesLine.extStartingNo}</td>
										<td>${ListNoSeriesLine.extIncrementbyNo}</td>
										<td>${ListNoSeriesLine.responsibilityCenter}</td>
										<td>${ListNoSeriesLine.block}</td>
										<td>${ListNoSeriesLine.description}</td>
										<td>${ListNoSeriesLine.locationCode}</td>
										<td>${ListNoSeriesLine.defaultCustomer}</td>
										<td>${ListNoSeriesLine.userID}</td>
										<td>${ListNoSeriesLine.extEndingNo}</td>
										<td>${ListNoSeriesLine.type}</td>
										<td>${ListNoSeriesLine.taxLiable}</td>
										<td>${ListNoSeriesLine.postingGroup}</td>
										<td><a onclick="return confirm('Bạn có muốn xóa này?');"
											class="btn btn-outline-danger round"
											href="/NoSeriesLine/delete/${ListNoSeriesLine.rowID }">Xoá</a>
											<a class="btn btn-outline-success round"
											href="/NoSeriesLine/showFormUpdateNoSeriesLine/${ListNoSeriesLine.rowID}">
												Sửa </a></td>
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
<!-- end -->
<!-- form add no series line -->
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
					<h3 class="content-header-title mb-0">NO SERIES LINE</h3>
					<br>
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
											<th style="width: 190px; text-align: center;">Series
												Code</th>
											<th style="width: 190px; text-align: center;">Code</th>
											<th style="width: 190px; text-align: center;">Starting
												No</th>
											<th style="width: 190px; text-align: center;">Ending No</th>
											<th style="width: 190px; text-align: center;">Warning No</th>
											<th style="width: 190px; text-align: center;">Increment
												by No</th>
											<th style="width: 190px; text-align: center;">Last No
												Used</th>
											<th style="width: 190px; text-align: center;">External
												Last No Used</th>
											<th style="width: 190px; text-align: center;">External
												Starting No</th>
											<th style="width: 190px; text-align: center;">External
												Increment by No</th>
											<th style="width: 190px; text-align: center;">Responsibility
												Center</th>
											<th style="width: 190px; text-align: center;">Description</th>

											<th style="width: 190px; text-align: center;">Location
												Code</th>
											<th style="width: 190px; text-align: center;">UserID</th>
											<th style="width: 190px; text-align: center;">External
												Ending No</th>
											<th style="width: 190px; text-align: center;">Remove</th>
										</tr>
									</thead>
								</table>
								<div id="sections">
									<div class="section">
										<table class="table" style="width: 2600px;">
											<tbody>
												<tr>
													<form modelAttribute="insertNoSeriesLine" method="post"
														action="/NoSeriesLine/insert">
														<td style="width: 190px"><input
															value="${seriesCode }" name="seriesCode" type="text"
															class="form-control round" /></td>
														<td style="width: 190px"><input name="code"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="startingNo"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="endingNo"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="warningNo"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="incrementbyNo"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="lastNoUsed"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="extLastNoUsed"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="extStartingNo"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input
															name="extIncrementbyNo" type="text"
															class="form-control round" /></td>
														<td style="width: 190px"><input
															name="responsibilityCenter" type="text"
															class="form-control round" /></td>
														<td style="width: 190px"><input name="description"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="locationCode"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="userID"
															type="text" class="form-control round" /></td>
														<td style="width: 190px"><input name="extEndingNo"
															type="text" class="form-control round" /></td>
														<button type="submit"
															class="btn btn-outline-success round btn-min-width mr-1 mb-1">Thêm</button>
													</form>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<a href="#" class='addsection round'
									style='color: #02988C; font-size: 30px;'>+</a>
							</div>

						</div>
					</div>
					<!-- - -->
					<!-- -->
				</div>
			</div>
		</div>
	</div>

</section>
<!-- end -->
<script type="text/javascript">
	$(document).ready(function() {

		//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
		$("#formDemo").validate({
			rules : {
				ho : "required",
				ten : "required",
				diachi : {
					required : true,
					minlength : 2
				}
			},
			messages : {
				ho : "Vui lòng nhập họ",
				ten : "Vui lòng nhập tên",
				diachi : {
					required : "Vui lòng nhập địa chỉ",
					minlength : "Địa chỉ ngắn vậy, chém gió ah?"
				}
			}
		});
	});
</script>
<!-- 2 link script of jquery va javascrip -->
<script
	src="<c:url value="/resources/js/scripts/forms/form-jquery.js"/>"></script>
<script src="<c:url value="/resources/js/scripts/forms/form-js.js"/>"></script>
<!-- end -->
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />