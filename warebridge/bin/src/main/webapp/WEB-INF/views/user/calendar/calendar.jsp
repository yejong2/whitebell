<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.fc-day-sun a {
    color: red;
	}
	
	.fc-day-sat a {
	    color: blue;
	}
	
</style>
<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card bg-menu-theme sub-side-menu" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3"> 
						<span>캘린더</span>
					</div>
					<button class="btn btn-primary btn-compose" data-btn-location="/calendar/user/input">일정등록</button>
				</div>
				<div id="layout-menu" class="card-body rowmenu menu-vertical inner-sub-menu">
					<ul class="menu-inner">
						<li class="menu-item active" sytle="width:100%">
							<a href="<%=request.getContextPath() %>/calendar/user/mine" class="menu-link">
								<div class="sub-side-div">개인 일정</div>
							</a>
						</li>
						<li class="menu-item" sytle="width:100%">
							<a class="menu-link menu-toggle">
								<div class="sub-side-div">팀 일정</div>
							</a>
							<ul class="menu-sub">
								<li class="menu-item">
									<a href="javascript:;" class="menu-link">
										<div class="sub-sub-div">팀1</div>
									</a>
								</li>
								<li class="menu-item">
									<a href="javascript:;" class="menu-link">
										<div class="sub-sub-div">팀2</div>
									</a>
								</li>
							</ul>
						</li>
						<li class="menu-item" sytle="width:100%">
							<a href="javascript:;" class="menu-link">
								<div class="sub-side-div">전사 일정</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-10 col-md-0" >
		<div class="row">
			<div class="col col-md-12 col-6" >
				<div class="card">
					<div id="inner-card-body" class="card-body" style="height: 82vh">
						<div id="calendar" class="h-100">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

