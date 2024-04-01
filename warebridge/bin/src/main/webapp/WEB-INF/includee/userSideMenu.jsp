<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
  <div class="app-brand demo">
    <a href="<%=request.getContextPath()%>/home" class="app-brand-link">
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="app-brand-logo demo">
      	<img src="<%=request.getContextPath()%>/resources/WareBridge_coral.png">
<%--       	<img src="<%=request.getContextPath()%>/resources/WareBridge_purple.png"> --%>
      </span>
    </a>

    <a href="javascript:;" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
      <i class="bx bx-chevron-left bx-sm align-middle"></i>
    </a>
  </div>

  <div class="menu-inner-shadow"></div>

  <ul class="menu-inner py-1">
    <!-- Dashboard -->
    <li class="menu-item active">
      <a href='<c:url value="/index/home"/>' class="menu-link">
        <i class="menu-icon tf-icons bx bx-home-circle"></i>
        <div data-i18n="Analytics">홈</div>
      </a>
    </li>

    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/mail" class="menu-link">
        <i class="menu-icon tf-icons bx bx-mail-send"></i>
        <div data-i18n="Account Settings">메일</div>
      </a>
    </li>
    <!-- Components -->
    <!-- Cards -->
    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/repository" class="menu-link">
        <i class="menu-icon tf-icons bx bx-folder"></i>
        <div data-i18n="Account Settings">자료실</div>
      </a>
    </li>

    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/eworks" class="menu-link">
        <i class="menu-icon tf-icons bx bx-paste"></i>
        <div data-i18n="Account Settings">전자결재</div>
      </a>
    </li>
    
      <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/community" class="menu-link">
        <i class="menu-icon tf-icons bx bx-chat"></i>
        <div data-i18n="Layouts">커뮤니티</div>
      </a>
    </li>
    
    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/reserve" class="menu-link">
        <i class="menu-icon tf-icons bx bx-time"></i>
        <div data-i18n="Layouts">예약</div>
      </a>
    </li>


    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/address" class="menu-link">
        <i class="menu-icon tf-icons bx bx-receipt"></i>
        <div data-i18n="Layouts">주소록</div>
      </a>
    </li>
    
    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/user/board" class="menu-link">
        <i class="menu-icon tf-icons bx bx-spreadsheet"></i>
        <div data-i18n="Layouts">게시판</div>
      </a>
    </li>
    
    
    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/calendar/user" class="menu-link">
        <i class="menu-icon tf-icons bx bx-calendar"></i>
        <div data-i18n="Layouts">캘린더</div>
      </a>
    </li>
    
    
    <li class="menu-item">
      <a href="<%=request.getContextPath()%>/index/home" class="menu-link">
        <i class="menu-icon tf-icons bx bx-layer"></i>
        <div data-i18n="Layouts">조직도</div>
      </a>
    </li>
    
  </ul>
</aside>

<script src="${pageContext.request.contextPath }/resources/myJS/sideMenuLink.js"></script>