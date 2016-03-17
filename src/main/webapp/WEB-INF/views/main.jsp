<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 내가 만든 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/stylesheets/css/main_page.css">

<title>웅마트컴</title>
</head>
<body>
	<!-- 사이트 맨위의 로고와 관리자 로그인 버튼 -->
	<div class="container head-container">
		<div class="row">
			<!-- 로고 -->
			<div class="col-xs-9">
				<a href="${pageContext.request.contextPath}/MainController/main"><h3>웅마트컴</h3></a>
			</div>
			<!-- 관리자 로그인 버튼 -->
			<!-- Modal -->
			<div class="modal fade" id="login_Modal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">관리자 로그인</h4>
						</div>
						<form>
							<div class="modal-body">
								<div class="form-group">
									<label for="admin-id">아이디</label> <input
										type="text" class="form-control" id="admin-id"
										placeholder="아이디를 입력하세요">
								</div>
								<div class="form-group">
									<label for="admin-password">비밀번호</label> <input
										type="password" class="form-control"
										id="admin-password" placeholder="비밀번호를 입력하세요">
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">login</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 버튼  -->
			<div class="col-xs-1 col-xs-offset-2">
				<h3 style="float: right;">
					<button type="button" class="btn btn-link" data-toggle="modal"
						data-target="#login_Modal">
						<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
					</button>
				</h3>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<!-- 왼쪽의 게시판 보드 -->
			<div class="col-xs-8 panel-board">
				<nav id="board-nav">
					<div class="container-fluid navigation-container">
						<ul class="nav nav-pills">
							<li role="presentation" class="active"><a href="#">Home</a></li>
							<li role="presentation"><a href="#">Profile</a></li>
							<li role="presentation"><a href="#">Messages</a></li>
						</ul>

						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</form>
					</div>
				</nav>

				<!-- 게시판 넣기 시작 -->
				<div class="panel-group panel-group-1" id="accordion" role="tablist"
					aria-multiselectable="true">
					<%
						int i;
						for (i = 1; i < 4; i++) {
					%>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="heading<%=i%>">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapse<%=i%>" aria-expanded="true"
									aria-controls="collapse<%=i%>"> Collapsible Group Item #<%=i%>
								</a>
							</h4>
						</div>
						<div id="collapse<%=i%>" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="heading<%=i%>">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
				<!-- 페이지네이션 -->
				<nav>
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#" aria-label="Next"><span
								aria-hidden="true">&raquo;</span> </a></li>
					</ul>
				</nav>
			</div>
			<!-- 오른쪽의  사이트 제작자 소개 및 자잘한 메뉴와 위젯 -->
			<div class="col-xs-3 col-xs-offset-1">
				<div id="profile_up_blink"></div>
				<div class="profile-image"></div>
				<!-- 사이트 제작자 소개 -->
				<div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>이름</th>
								<th>최재웅</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>소속</td>
								<td>명지대학교</td>
							</tr>
							<tr>
								<td>나이</td>
								<td>94년생</td>
							</tr>
							<tr>
								<td>취미</td>
								<td>독서, 게임, 제작</td>
							</tr>
						</tbody>
					</table>
				</div>


			</div>
		</div>
	</div>

	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<!-- 내 js파일 -->
	<script src="${pageContext.request.contextPath}/resources/js/main_page.js"></script>	
</body>
</html>