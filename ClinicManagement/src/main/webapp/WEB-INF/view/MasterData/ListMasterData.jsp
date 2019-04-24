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
<section id="horizontal">
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
											href="/NoSeriesLine/delete/${ListNoSeriesLine.rowID }">Xoá</a> <a
											class="btn btn-outline-success round"
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
					<h3 class="content-header-title mb-0">ADD SERIES LINE</h3>
					<br> <a href="#"
						class='addsection btn btn-outline-success round btn-min-width mr-1 mb-1'>Add
						Section</a>
					<div id="sections">
						<div class="section">
							<form:form modelAttribute="insertNoSeriesLine" class="forms-sample"
								method="post" action="/NoSeriesLine/insert">
								<hr>
								<fieldset>  
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Series Code</label> <input value="${seriesCode }"
											class="form-control round" name="seriesCode"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Code</label> <input class="form-control round"
											name="code"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Starting No</label> <input class="form-control round"
											name="startingNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Ending No</label> <input class="form-control round"
											name="endingNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Warning No</label> <input class="form-control round"
											name="warningNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Increment by No</label> <input
											class="form-control round" name="incrementbyNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Last No Used</label> <input class="form-control round"
											name="lastNoUsed"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
									
										<label>External Last No Used</label> <input
											class="form-control round" name="extLastNoUsed"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>External Starting No</label> <input
											class="form-control round" name="extStartingNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>External Increment by No</label> <input
											class="form-control round" name="extIncrementbyNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Responsibility Center</label> <input
											class="form-control round" name="responsibilityCenter"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Description</label> <input class="form-control round"
											name="description"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>Location Code</label> <input class="form-control round"
											name="locationCode"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>UserID</label> <input class="form-control round"
											name="userID"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<label>External Ending No</label> <input
											class="form-control round" name="extEndingNo"></input>
									</div>
									<div class="form-group col-xl-2 col-lg-6 col-md-12 mb-1">
										<a href="#"
											class='remove btn btn-outline-danger round btn-min-width mr-1 mb-1'>Remove
											Section</a>
									</div>
									<button type="submit"
										class="btn btn-outline-success round btn-min-width mr-1 mb-1">Thêm</button>
									<a href="<c:url value="/nhatkycongviec"> </c:url> "
										class="btn btn-outline-danger round btn-min-width mr-1 mb-1">Hủy</a>
								</fieldset>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end -->

<!-- 2 link script of jquery va javascrip -->
<script
	src="<c:url value="/resources/js/scripts/forms/form-jquery.js"/>"></script>
<script src="<c:url value="/resources/js/scripts/forms/form-js.js"/>"></script>
<!-- end -->
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />