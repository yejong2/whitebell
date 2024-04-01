<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card bg-menu-theme sub-side-menu" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3"> 
						<span>조직 관리</span>
					</div>
<!-- 					<button class="btn btn-primary btn-compose">미정</button> -->
				</div>
				<div id="layout-menu" class="card-body row d-grid menu menu-vertical inner-sub-menu">
<!-- 					<aside id="layout-menu" class="row d-grid menu menu-vertical"> -->
					<ul class="menu-inner">
						<li class="menu-item active">
							<a href="javascript:;" class="menu-link">
								<div class="sub-side-div">조직 설계</div>
							</a>
						</li>
						<li class="menu-item">
							<a href="javascript:;" class="menu-link">
								<div class="sub-side-div">직위체계</div>
							</a>
						</li>
						<li class="menu-item">
							<a href='<c:url value="/admin/employee"/>' class="menu-link">
								<div class="sub-side-div">사원통합관리</div>
							</a>
						</li>
						<li class="menu-item">
							<a href='<c:url value="/admin/bulkEmployee"/>' class="menu-link">
								<div class="sub-side-div">일괄등록</div>
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
					 사원관리~!
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
