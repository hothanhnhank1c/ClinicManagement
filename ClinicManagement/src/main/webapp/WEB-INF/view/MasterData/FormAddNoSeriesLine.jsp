<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<<<<<<< .mine
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet"/>


<button type="button" id="selectAll"> Select </button>
<button type="button" id="unselectAll"> UnSelect </button>
<table id="example" class="myclass" >
<thead>
  <tr>
    <th></th><th>Name</th><th>Company</th><th>Employee Type</th><th>Address</th><th>Country</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><input type="checkbox" /></td><td>Calvin</td><td>TCS</td><td>IT</td><td>San Francisco</td><td>US</td>
  </tr>
  <tr>
    <td><input type="checkbox" /></td><td>Ananda</td><td>TCS</td><td>IT</td><td>San Francisco</td><td>US</td>
  </tr>
  <tr>
    <td><input type="checkbox" /></td><td>John</td><td>TCS</td><td>IT</td><td>San Francisco</td><td>US</td>
  </tr>
  <tr>
    <td><input type="checkbox" /></td><td>Doe</td><td>TCS</td><td>IT</td><td>San Francisco</td><td>US</td>
  </tr>
</tbody>
</table>
<script type="text/javascript">

$('#example').dataTable();

//Select row table
$('#example').on('click', 'tr', function() {
  var $row = $(this),
    isSelected = $row.hasClass('selected')
  $row.toggleClass('selected')
    .find(':checkbox').prop('checked', !isSelected);
});

// Problem : Checkbox !== select row
$("#selectAll, #unselectAll").on("click", function() {
  var selectAll = this.id === 'selectAll';
  $("#example tr").toggleClass("selected", selectAll)
    .find(":checkbox").prop('checked', selectAll);
});

</script>
||||||| .r12111
<style type="text/css">
input[type=search] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	font-family: inherit;
	font-size: 100%;
}
.lable{
width: 200px;
}
.form-control round{
width: 200px;
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
					<div class="collapse in" id="boxnoidung5">
						<div>
							<p class="card-text">
							<div class="row"
								style="border: 1px solid black; padding: 1px; overflow-x: auto; border-color: #F8F8FF;">
								<p
									style="height: 1px; width: 2600px; border: 0.5px solid blue; border-color: #696969;">
								<div id="sections">
									<div class="section">
										<table class="table" style="width: 2600px;">
											<thead>
												<form:form class="forms-sample" method="post"
													action="/NoSeries/insert" modelAttribute="NoseriesLine">
													<td><label class="lable">Series Code</label>
														<form:input path="seriesCode" type="text"
															class="form-control round" readonly="true" /></td>
													<td><label class="lable">Code</label> <form:input
															path="code" type="text" class="form-control round" readonly="true"/></td>
													<td><label class="lable">Starting No</label>
														<form:input path="startingNo" type="text"
															class="form-control round" /></td>
													<td><label class="lable">Ending No</label> <form:input
															path="endingNo" type="text" class="form-control round" /></td>
													<td><label class="lable">Warning No</label>
														<form:input path="warningNo" type="text"
															class="form-control round" /></td>
													<td><label class="lable">Increment
															by No</label> <form:input path="incrementbyNo" type="text"
															class="form-control round" /></td>
													<td><label class="lable">Last No
															Used</label> <form:input path="lastNoUsed" type="text"
															class="form-control round" /></td>
													<td><label class="lable">External
															Last No Used</label> <form:input path="extLastNoUsed" type="text"
															class="form-control round" /></td>
													<td><label class="lable">External
															Starting No</label> <form:input path="extStartingNo" type="text"
															class="form-control round" /></td>
													<td><label class="lable">External
															Increment by No</label> <form:input path="extIncrementbyNo"
															type="text" class="form-control round" /></td>
													<td><label class="lable">Responsibility
															Center</label> <form:input path="responsibilityCenter"
															type="text" class="form-control round" /></td>
													<td><label class="lable">Description</label>
														<form:input path="description" type="text"
															class="form-control round" /></td>
													<td><label class="lable">Location
															Code</label> <form:input path="locationCode" type="text"
															class="form-control round" /></td>
													<td><label class="lable">UserID</label> <form:input
															path="userID" type="text" class="form-control round" />
													</td>
													<td><label class="lable">External
															Ending No</label> <form:input path="extEndingNo" type="text"
															class="form-control round" /></td>
													<button type="submit" class="btn btn-outline-success round">Lưu</button>
													<a
														href="<c:url value="/MasterData/ListMasterData"> </c:url> "
														class="btn btn-outline-danger round">Hủy</a>
												</form:form>
											</thead>
										</table>

									</div>
								</div>
								<a href="#" class='addsection round'
					style='color: #02988C; font-size: 30px;'>+</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
=======
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
>>>>>>> .r12113
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />