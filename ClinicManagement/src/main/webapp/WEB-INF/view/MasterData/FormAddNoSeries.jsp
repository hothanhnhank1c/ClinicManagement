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
					<h3 class="content-header-title mb-0">ADD NO SERIES</h3>
					<br>
					<form:form class="forms-sample" method="post"
						action="/NoSeries/insert" modelAttribute="Noseries">
						<div class="form-group">
							<label for="exampleInputName1">Series Code</label>
							<form:input path="seriesCode" type="text" class="form-control round" />
							<form:errors path="seriesCode" cssStyle="color: red" />
						</div>
						<div class="form-group">
							<label for="exampleInputName1">Description</label>
							<form:input path="description" type="text" class="form-control round" />
							<form:errors path="description" cssStyle="color: red" />
						</div>
						<div class="form-group">
							<label for="exampleInputName1">Default Nos</label>
							<form:input path="defaultNos" type="text" class="form-control round" />
							<form:errors path="defaultNos" cssStyle="color: red" />
						</div>
						<div class="form-group">
							<label for="exampleInputName1">Manual Nos</label>
							<form:input path="manualNos" type="text" class="form-control round" />
							<form:errors path="manualNos" cssStyle="color: red" />
						</div>
						<div class="form-group">
							<label for="exampleInputName1">Date Order</label>
							<form:input path="dateOrder" type="text" class="form-control round" />
							<form:errors path="dateOrder" cssStyle="color: red" />
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