<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
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
					<h3 class="content-header-title mb-0">ADD NO SERIES LINE</h3>
					<br>
					<form:form class="forms-sample" method="post"
						action="/NoSeries/insert" modelAttribute="NoseriesLine">
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Series Code</label>
								<form:input path="seriesCode" type="text"
									class="form-control round" readonly="true" />
								<form:errors path="seriesCode" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Code</label>
								<form:input path="code" type="text" class="form-control round" />
								<form:errors path="code" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Starting No</label>
								<form:input path="startingNo" type="text"
									class="form-control round" />
								<form:errors path="startingNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Ending No</label>
								<form:input path="endingNo" type="text"
									class="form-control round" />
								<form:errors path="endingNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Warning No</label>
								<form:input path="warningNo" type="text"
									class="form-control round" />
								<form:errors path="warningNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Increment by No</label>
								<form:input path="incrementbyNo" type="text"
									class="form-control round" />
								<form:errors path="incrementbyNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Last No Used</label>
								<form:input path="lastNoUsed" type="text"
									class="form-control round" />
								<form:errors path="lastNoUsed" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">External Last No Used</label>
								<form:input path="extLastNoUsed" type="text"
									class="form-control round" />
								<form:errors path="extLastNoUsed" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">External Starting No</label>
								<form:input path="extStartingNo" type="text"
									class="form-control round" />
								<form:errors path="extStartingNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">External Increment by No</label>
								<form:input path="extIncrementbyNo" type="text"
									class="form-control round" />
								<form:errors path="extIncrementbyNo" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Responsibility Center</label>
								<form:input path="responsibilityCenter" type="text"
									class="form-control round" />
								<form:errors path="responsibilityCenter" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Description</label>
								<form:input path="description" type="text"
									class="form-control round" />
								<form:errors path="description" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">Location Code</label>
								<form:input path="locationCode" type="text"
									class="form-control round" />
								<form:errors path="locationCode" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">UserID</label>
								<form:input path="userID" type="text" class="form-control round" />
								<form:errors path="userID" cssStyle="color: red" />
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<div class="form-group">
								<label for="exampleInputName1">External Ending No</label>
								<form:input path="extEndingNo" type="text"
									class="form-control round" />
								<form:errors path="extEndingNo" cssStyle="color: red" />
							</div>
						</div>
						<button type="submit" class="btn btn-outline-success round">Lưu</button>
						<a href="<c:url value="/MasterData/ListMasterData"> </c:url> "
							class="btn btn-outline-danger round">Hủy</a>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />