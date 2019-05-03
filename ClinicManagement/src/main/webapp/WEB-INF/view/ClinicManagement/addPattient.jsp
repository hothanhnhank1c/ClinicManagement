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
					<h3 class="content-header-title mb-0">ADD PATTIENT</h3>
					<br>
					<form:form class="forms-sample" method="post"
						action="/ClinicManagement/insert" modelAttribute="Pattient">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">No_</label>
									<form:input path="no"  value = "${no}" type="text" class="form-control round"  readonly="true"/>
									<form:errors path="no" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
							
								<div class="form-group">
									<label for="exampleInputName1">Fist Name</label>
									<form:input path="fistName" type="text"
										class="form-control round" />
									<form:errors path="fistName" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Last Name</label>
									<form:input path="lastName" type="text"
										class="form-control round" />
									<form:errors path="lastName" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Full Name</label>
									<form:input path="fullName" type="text"
										class="form-control round" />
									<form:errors path="fullName" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Sex</label>
									<form:select class="custom-select form-control round"
										path="sex">
										<option value="none">Chọn Giới Tính</option>
										<form:option value="0">Nam</form:option>
										<form:option value="1">Nữ</form:option>

									</form:select>
									<form:errors path="sex" cssClass="invalid-feedback d-block" />
								</div>

							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Height</label>
									<form:input path="height" type="text"
										class="form-control round" />
									<form:errors path="height" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Weight</label>
									<form:input path="weight" type="text"
										class="form-control round" />
									<form:errors path="weight" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Blood Group</label>
									<form:select class="custom-select form-control round"
										path="bloodGroup">
										<option value="none">Chọn Nhóm Máu</option>
										<form:option value="0">O</form:option>
										<form:option value="1">A</form:option>
										<form:option value="2">B</form:option>
										<form:option value="3">AB</form:option>
									</form:select>
									<form:errors path="bloodGroup" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Birthday</label>
									<fieldset class="form-group position-relative">
										<form:input placeholder="Birthday" type="date"
											class="form-control round" path="birthday" />
										<div class="form-control-position">
											<i class="fa fa-calendar-o"></i>
										</div>
									</fieldset>
									<form:errors path="birthday" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<!--lấy dữ liệu từ bảng dân tộc-->
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Ethnic No_</label>
									<form:select path="ethnicity.ethnicCode" type="text"
										id="projectinput4" class="form-control">
										<option value="none" selected="selected">Chọn dân tộc</option>
										<c:forEach items="${listEthnicity}" var="x">
											<option value="${x.ethnicCode}">${x.ethnicName}</option>
										</c:forEach>
									</form:select>

									<form:errors path="ethnicity.ethnicCode" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Phone Number</label>
									<form:input path="phoneNumber" type="text"
										class="form-control round" />
									<form:errors path="phoneNumber" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Email</label>
									<form:input path="email" type="text" class="form-control round" />
									<form:errors path="email" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Religion</label>
									<form:input path="religion" type="text"
										class="form-control round" />
									<form:errors path="religion" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Marital Status</label>
									<form:select class="custom-select form-control round"
										path="maritalStatus">
										<option value="none">Chọn Tình Trạng Hôn Nhân</option>
										<form:option value="0">Độc Thân</form:option>
										<form:option value="1">Đã Kết Hôn</form:option>
									</form:select>
									<form:errors path="maritalStatus" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">No_ ID</label>
									<form:input path="no_ID" type="text" class="form-control round" />
									<form:errors path="no_ID" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Issued by</label>
									<form:input path="issuedby" type="text"
										class="form-control round" />
									<form:errors path="issuedby" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Issued Date</label>
									<fieldset class="form-group position-relative">
										<form:input placeholder="issuedDate" type="date"
											class="form-control round" path="issuedDate" />
										<div class="form-control-position">
											<i class="fa fa-calendar-o"></i>
										</div>
									</fieldset>
									<form:errors path="issuedDate" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Insurance No_</label>
									<form:input path="insuranceNo_" type="text"
										class="form-control round" />
									<form:errors path="insuranceNo_" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Address</label>
									<form:input path="address" type="text"
										class="form-control round" />
									<form:errors path="address" cssStyle="color: red" />
								</div>
							</div>
							<!--lấy dữ liệu từ bảng phường xã-->
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Commune No_</label>
									<form:input path="communeNo_" type="text"
										class="form-control round" />
									<form:errors path="communeNo_" cssStyle="color: red" />
								</div>
							</div>
							<!--lấy dữ liệu từ bảng quận huyện-->
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">District No_</label>
									<form:input path="districtNo_" type="text"
										class="form-control round" />
									<form:errors path="districtNo_" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<!--lấy dữ liệu từ bảng tỉnh,tp-->
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Province No_</label>
									<form:input path="provinceNo_" type="text"
										class="form-control round" />
									<form:errors path="provinceNo_" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Job Description</label>
									<form:input path="jobDescription" type="text"
										class="form-control round" />
									<form:errors path="jobDescription" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Workplace</label>
									<form:input path="workplace" type="text"
										class="form-control round" />
									<form:errors path="workplace" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Object type</label>
									<form:select class="custom-select form-control round"
										path="objecttype">
										<option value="none">Chọn Loại Đối Tượng</option>
										<form:option value="0">Nội Trú</form:option>
										<form:option value="1">Ngoại Trú</form:option>
									</form:select>
									<form:errors path="objecttype" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Current Address</label>
									<form:input path="currentAddress" type="text"
										class="form-control round" />
									<form:errors path="currentAddress" cssStyle="color: red" />
								</div>
							</div>
							<!--lấy dữ liệu từ bảng phường xã-->
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Current Commune No_</label>
									<form:input path="currentCommuneNo_" type="text"
										class="form-control round" />
									<form:errors path="currentCommuneNo_" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<!--lấy dữ liệu từ bảng quận huyện-->
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Current District No_</label>
									<form:input path="currentDistrictNo_" type="text"
										class="form-control round" />
									<form:errors path="currentDistrictNo_" cssStyle="color: red" />
								</div>
							</div>
							<!--lấy dữ liệu từ bảng tỉnh,tp-->
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Current Province No_</label>
									<form:input path="currentProvinceNo_" type="text"
										class="form-control round" />
									<form:errors path="currentProvinceNo_" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Posting No_ Series</label>
									<form:input path="postingNo_Series" type="text"
										class="form-control round" />
									<form:errors path="postingNo_Series" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Created By</label>
									<form:input path="createdBy" type="text"
										class="form-control round" />
									<form:errors path="createdBy" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Created Date</label>
									<fieldset class="form-group position-relative">
										<form:input placeholder="createdDate" type="date"
											class="form-control round" path="createdDate" />
										<div class="form-control-position">
											<i class="fa fa-calendar-o"></i>
										</div>
									</fieldset>
									<form:errors path="createdDate" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Modified By</label>
									<form:input path="modifiedBy" type="text"
										class="form-control round" />
									<form:errors path="modifiedBy" cssStyle="color: red" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Modified Date</label>
									<fieldset class="form-group position-relative">
										<form:input placeholder="modifiedDate" type="date"
											class="form-control round" path="modifiedDate" />
										<div class="form-control-position">
											<i class="fa fa-calendar-o"></i>
										</div>
									</fieldset>
									<form:errors path="modifiedDate" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Clinic No_</label>
									<form:input path="clinicNo" type="text"
										class="form-control round" />
									<form:errors path="clinicNo" cssStyle="color: red" />
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="exampleInputName1">Company No_</label>
									<form:input path="companyNo" type="text"
										class="form-control round" />
									<form:errors path="companyNo" cssStyle="color: red" />
									<form:hidden path="status" readonly="true" />
									<form:hidden path="no_Series" readonly="true" />
								</div>
							</div>
						</div>
						<hr>
						<button type="submit" class="btn btn-outline-success round">Lưu</button>
						<a href="<c:url value="#"> </c:url> "
							class="btn btn-outline-danger round">Hủy</a>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />