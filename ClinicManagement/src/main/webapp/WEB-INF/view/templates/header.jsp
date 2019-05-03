
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description"
	content="FastTrackSE Bunisess Management System.">
<meta name="keywords"
	content="human resource, document, project, working log, leave management">
<meta name="author" content="FFSE1703">
<title>CMT - Cosmo Medical Technology</title>
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/logocmt.png"/>">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/images/logocmt.png"/>">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet" />
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/vendors.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/feather/style.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/vendors.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/tables/jsgrid/jsgrid-theme.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/tables/jsgrid/jsgrid.min.css"/>">
<!-- END: Vendor CSS-->
<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap-extended.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/colors.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/components.min.css"/>">
<!-- END: Theme CSS-->
<!--  -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/flag-icon-css/css/flag-icon.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/extensions/pace.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/tables/datatable/dataTables.bootstrap4.min.css"/>">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/extensions/unslider.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/weather-icons/climacons.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/meteocons/style.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/charts/morris.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendors/css/calendars/fullcalendar.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/plugins/calendars/fullcalendar.min.css"/>">

<!-- END VENDOR CSS-->
<!-- BEGIN STACK CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap-extended.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/app.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/colors.css"/>">
<!-- END STACK CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/core/menu/menu-types/vertical-menu.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/core/menu/menu-types/vertical-overlay-menu.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/core/colors/palette-gradient.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/core/colors/palette-callout.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/plugins/forms/extended/form-extended.min.css"/>">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/simple-line-icons/style.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/pages/timeline.css"/>">
<!-- END Page Level CSS-->
<style>
.invalid-feedback {
	color: #DC3545;
	padding-top: 10px;
}

.invalid-feedback::before {
	content: "•";
	padding-left: 10px;
	padding-right: 10px;
}

* ==Reset CSS ==* /
* {
	margin: 0;
	padding: 0;
}

/*==Style cơ bản cho website==*/
body {
	font-family: sans-serif;
	color: #333;
}

/*==Style cho menu===*/
#menu ul {
	background: #1F568B;
	list-style-type: none;
	text-align: left;
}

#menu li {
	color: #f1f1f1;
	display: inline-block;
	width: 150px;
	height: 20px;
	line-height: 40px;
	margin-left: -5px;
}

#menu a {
	text-decoration: none;
	color: #fff;
	display: block;
}

#menu a:hover {
	background: #F1F1F1;
	color: #333;
}
    label {
        display: inline-block;
        width: 150px;
    }
    input[type="text"], input[type="password"] {
        display: inline-block;
        width: 200px;
    }
    label.error {
        display: inline-block;
        color:red;
        width: 200px;
    }

</style>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script>
	$(document).ready(
			function() {
				listClass = [ "phong_ban", "chuc_danh" ];
				url = window.location.href;
				selector = '.'
						+ url.substring(url.lastIndexOf("ffse-fbms") + 10);
				selector = selector.replace(/\//g, '').replace(/[0-9]/g, '');
				$(selector).addClass('active open');

				var i;
				for (i = 0; i < listClass.length; i++) {
					if (selector.includes(listClass[i])) {
						$("." + listClass[i]).addClass('open');
					}
				}
				console.log(selector);
				if (selector.includes('ho_so')
						&& !selector.includes('viewho_so')
						&& !selector.includes('qlnsnv')
						&& !selector.includes('ho_soedit')) {
					$(".pbho_so").addClass('open');
				}
				if (selector.includes('hop_dong')
						&& !selector.includes('viewhop_dong')
						&& !selector.includes('qlnsnv')
						&& !selector.includes('hop_dongedit')) {
					$(".pbhop_dong").addClass('open');
				}
			});
</script>

</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns"
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">

	<nav
		class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-light bg-gradient-x-grey-blue">
		<div class="continer">

			<!-- Show message -->
			<c:if test="${messageSC ne null}">
				<div class="alert alert-success  btn-min-width mr-1 mb-1"
					role="alert">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					${messageSC}
				</div>
			</c:if>
			<c:if test="${messageER ne null}">
				<div class="alert alert-danger alert-dismissable" role="alert">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					${messageER}
				</div>
			</c:if>
		</div>
		<div class="navbar-wrapper">
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li class="nav-item mobile-menu hidden-md-up float-xs-left"><a
						href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i
							class="ft-menu font-large-1"></i></a></li>
					<li class="nav-item"><a href="https://cosmomedical.com.vn/"
						class="navbar-brand"><img
							src="<c:url value="/resources/images/logocmt.png"/>"
							alt="CMT logo" class="brand-logo" style="width: 45px;" />
							<h2 class="brand-text">CMT</h2></a></li>
					<li class="nav-item hidden-md-up float-xs-right"><a
						data-toggle="collapse" data-target="#navbar-mobile"
						class="nav-link open-navbar-container"><i
							class="fa fa-ellipsis-v"></i></a></li>
				</ul>
			</div>
			<div class="navbar-container content container-fluid">
				<div id="navbar-mobile" class="collapse navbar-toggleable-sm">
					<ul class="nav navbar-nav">
						<li class="nav-item hidden-sm-down"><a href="#"
							class="nav-link nav-menu-main menu-toggle hidden-xs"><i
								class="ft-menu"></i></a></li>
					</ul>
					<ul class="nav navbar-nav float-xs-right">
						<li class="dropdown dropdown-language nav-item"><a
							class="dropdown-toggle nav-link" id="dropdown-flag" href="#"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="flag-icon flag-icon-gb"></i><span
								class="selected-language"></span>
						</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-flag">
								<a class="dropdown-item" href="?lang=en"><i
									class="flag-icon flag-icon-gb"></i> English</a> <a
									class="dropdown-item" href="?lang=vi"><i
									class="flag-icon flag-icon-vn"></i> Tiếng Việt</a>
							</div></li>
						<li class="dropdown dropdown-user nav-item"><a href="#"
							data-toggle="dropdown"
							class="dropdown-toggle nav-link dropdown-user-link"><span
								class="avatar avatar-online"><img
									src="<c:url value="/resources/images/portrait/small/avatar-s-1.png"/>"
									alt="avatar"><i></i></span><span class="user-name">ADMIN</span></a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="#" class="dropdown-item"><i class="ft-user"></i>
									Edit Profile</a> <a href="#" class="dropdown-item"><i
									class="ft-mail"></i> My Inbox</a> <a href="#" class="dropdown-item"><i
									class="ft-check-square"></i> Task</a> <a href="#"
									class="dropdown-item"><i class="ft-message-square"></i>
									Chats</a>
								<div class="dropdown-divider"></div>
								<form class="dropdown-item"
									action="<c:url value="/j_spring_security_logout" />"
									method="post">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> <a href="#"
										onclick="$(this).closest('form').submit()"><i
										class="ft-power"></i>Logout</a>
								</form>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<div data-scroll-to-active="true"
		class="main-menu menu-fixed menu-light menu-accordion menu-shadow">
		<div class="main-menu-content">
			<ul id="main-menu-navigation" data-menu="menu-navigation"
				class="navigation navigation-main">
				<!-- Clinic Management   -->
				<li class=" navigation-header"><span>CLINIC MANAGEMENT</span><i
					data-toggle="tooltip" data-placement="right"
					data-original-title="Apps" class=" ft-minus"></i></li>
				<li class=" nav-item"><a href="<c:url value = "/"/>"><i
						class="icon-home"></i><span data-i18n="" class="menu-title">Home</span></a></li>
				<!-- clinic management -->
				<li class=" nav-item"><a href="#"><i class="fa fa-blind"></i><span
						class="menu-title" data-i18n="">Clinic Management</span></a>
					<ul class="menu-content">
						<li><a class="menu-item" href="#">Employees</a></li>
						<li><a class="menu-item"
							href="<c:url value = "/ClinicManagement/HomePattient"/>">Patient</a>
						</li>
					</ul></li>
				<!-- end -->
				<!-- master data -->
				<li class=" nav-item"><a href="#"><i class="fa fa-database"></i><span
						class="menu-title" data-i18n="">Master Data</span></a>
					<ul class="menu-content">
						<li><a class="menu-item"
							href="<c:url value = "/MasterData/ListMasterData"/>">Statistics</a>
						</li>
						<li><a class="menu-item" href="card-weather.html">Weather</a>
						</li>
						<li><a class="menu-item" href="card-charts.html">Charts</a></li>
						<li><a class="menu-item" href="card-maps.html">Maps</a></li>
						<li><a class="menu-item" href="card-social.html">Social</a></li>
						<li><a class="menu-item" href="card-ecommerce.html">E-Commerce</a>
						</li>
					</ul></li>
				<!-- end -->
				<li class=" nav-item"><a href="<c:url value = "#"/>"><i
						class="fa fa-cart-arrow-down"></i><span data-i18n=""
						class="menu-title">Supply Chain Management</span></a></li>
				<li class=" nav-item"><a href="<c:url value = "#"/>"><i
						class="fa fa-pencil-square"></i><span data-i18n=""
						class="menu-title">Medical appointment</span></a></li>
				<li class=" nav-item"><a href="<c:url value = "#"/>"><i
						class="fa fa-file-text"></i><span data-i18n="" class="menu-title">Report</span></a></li>

			</ul>
		</div>
	</div>
	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">