<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  uri="http://java.sun.com/jstl/core" prefix="c"%>

<div id="fileArea">	</div>
<form method="post" enctype="mulipart/form-data" id="fileForm">
<input type="file" name="uploadFile" multiple />
<button type="submit" >업로드</button>
</form>
<script type="text/javascript" src="<c:url value='/resources/js/app/mission/fileForm.js'/>"></script>
