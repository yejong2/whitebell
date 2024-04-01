<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav
	class="layout-navbar container-fluid navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
	id="layout-navbar">
	<!--             <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none"> -->
	<!--               <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)"> -->
	<!--                 <i class="bx bx-menu bx-sm"></i> -->
	<!--               </a> -->
	<!--             </div> -->

	<div class="navbar-nav-right d-flex align-items-center"
		id="navbar-collapse">
		<!-- Search -->
		<!--               <div class="navbar-nav align-items-center"> -->
		<!--                 <div class="nav-item d-flex align-items-center"> -->
		<!--                   <i class="bx bx-search fs-4 lh-0"></i> -->
		<!--                   <input -->
		<!--                     type="text" -->
		<!--                     class="form-control border-0 shadow-none" -->
		<!--                     placeholder="Search..." -->
		<!--                     aria-label="Search..." -->
		<!--                   /> -->
		<!--                 </div> -->
		<!--               </div> -->
		<!-- /Search -->

		<ul class="navbar-nav flex-row align-items-center ms-auto">
			<li class="nav-item navbar-dropdown dropdown-user dropdown">
				<a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
						<div class="avatar avatar-online">
							<img src="<%=request.getContextPath()%>/resources/icons/bell.png"
								alt="" class="w-px-30 h-auto rounded-circle" />
						</div>
				</a>
			</li>
			<li class="nav-item navbar-dropdown dropdown-user dropdown">
			<a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
					<div class="avatar avatar-online">
						<img
							src="<%=request.getContextPath()%>/resources/icons/circle-user.png"
							alt="" class="w-px-30 h-auto rounded-circle" />
					</div>
			</a>
				<ul id="header-dropdown" class="dropdown-menu dropdown-menu-end">
					<!--                     <li> -->
					<!--                       <a class="dropdown-item" href="#"> -->
					<!--                         <div class="d-flex"> -->
					<!--                           <div class="flex-shrink-0 me-3"> -->
					<!--                             <div class="avatar avatar-online"> -->
					<%--                               <img src="<%=request.getContextPath()%>/resources/icons/circle-user.png" alt class="w-px-40 h-auto rounded-circle" /> --%>
					<!--                             </div> -->
					<!--                           </div> -->
					<!--                           <div class="flex-grow-1"> -->
					<!--                             <span class="fw-semibold d-block">사용자</span> -->
					<!--                             <small class="text-muted">User</small> -->
					<!--                           </div> -->
					<!--                         </div> -->
					<!--                       </a> -->
					<!--                     </li> -->
					<!--                     <li> -->
					<!--                       <div class="dropdown-divider"></div> -->
					<!--                     </li> -->
					<li>
						<a id="header-mypage" class="dropdown-item" href="<%=request.getContextPath()%>/mypage"> 
							<i class="bx bx-user me-2"></i> <span class="align-middle">마이페이지</span>
						</a>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<a class="dropdown-item" href="<%=request.getContextPath()%>/admin/company"> 
							<i class="bx bx-user me-2"></i> <span class="align-middle">관리자페이지</span>
						</a>
					</li>
					<!--                     <li> -->
					<!--                       <a class="dropdown-item" href="#"> -->
					<!--                         <i class="bx bx-cog me-2"></i> -->
					<!--                         <span class="align-middle">Settings</span> -->
					<!--                       </a> -->
					<!--                     </li> -->
					<!--                     <li> -->
					<!--                       <a class="dropdown-item" href="#"> -->
					<!--                         <span class="d-flex align-items-center align-middle"> -->
					<!--                           <i class="flex-shrink-0 bx bx-credit-card me-2"></i> -->
					<!--                           <span class="flex-grow-1 align-middle">Billing</span> -->
					<!--                           <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span> -->
					<!--                         </span> -->
					<!--                       </a> -->
					<!--                     </li> -->
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<form method="post" id="logoutForm" action="${pageContext.request.contextPath}/login/logOut"></form>
						<a class="dropdown-item" href="javascript:;" data-log-out="#logoutForm"> 
							<i class="bx bx-power-off me-2"></i> 로그아웃
						</a> 
					<!-- 						<a class="dropdown-item" href="auth-login-basic.html">  -->
					<!-- 							<i class="bx bx-power-off me-2"></i> <span class="align-middle">로그아웃</span> -->
					<!-- 						</a> -->
					</li>
				</ul>
				
				</li>
			<!--/ User -->
		</ul>
	</div>
</nav>
<script src="${pageContext.request.contextPath}/resources/js/app/index.js"></script>