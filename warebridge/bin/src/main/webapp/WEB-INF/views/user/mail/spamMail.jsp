<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="inner-card-body" class="card-body" style="height: 82vh">
	<h4 class="card-header">스팸 메일함</h4>
	<div class="btn-toolbar demo-inline-spacing" role="toolbar"
		aria-label="Toolbar with button groups">
		<div class="btn-group d-flex justify-content-end" role="group"
			aria-label="Third group">
			<form class="input-group">
				<span class="input-group-text">
				<i class="tf-icons bx bx-search"></i>
				</span> 
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>
		<div class="btn-group" role="group" aria-label="First group">
			<button type="button" class="btn btn-outline-secondary">삭제</button>
			<button type="button" class="btn btn-outline-secondary">스팸처리</button>
			<button type="button" class="btn btn-outline-secondary">답장</button>
			<button type="button" class="btn btn-outline-secondary">전달</button>
			<button type="button" class="btn btn-outline-secondary">읽음 처리</button>
		</div>
	</div>
	<div class="table-responsive text-nowrap">
		<table class="table table-hover">
			<thead>
				<tr>
					<th><input class="form-check-input" type="checkbox" value="" id="defaultCheck1"></th>
					<th>보낸 사람</th>
					<th>메일 제목</th>
					<th>받은 시간</th>
				</tr>
			</thead>
			<tbody class="table-border-bottom-0">
				<tr>
					<td>
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
					 	<span class="badge badge-center rounded-pill bg-label-warning">
							<i class="tf-icons bx bx-bulb"></i>
						</span>
					</td>
					<td><strong>우리카드</strong></td>
					<td><strong>휴면해제 안내</strong></td>
					<td>2월7일 15:21</td>
				</tr>
				<tr>
					<td>
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck3"> 
						<span class="badge badge-center rounded-pill bg-label-warning">
							<i class="tf-icons bx bx-bulb"></i>
						</span>
					</td>
					<td><strong>Slack</strong></td>
					<td><strong>프리미엄 종료</strong></td>
					<td>2월5일 12:47</td>
				</tr>
				<tr>
					<td>
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck3"> 
						<i class="tf-icons bx bx-bulb"></i>
					</td>
					<td><strong>Slack</strong></td>
					<td><strong>프리미엄 종료 3일전</strong>
					</td>
					<td>2월2일 23:45</td>
				</tr>
				<tr>
					<td>
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck4"> 
						<i class="tf-icons bx bx-bulb"></i>
					</td>
					<td><strong>김주하</strong></td>
					<td><strong>파일이 공유됨</strong></td>
					<td>1월31일 05:44</td>
				</tr>
				<tr>
					<td>
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                    	<i class="tf-icons bx bx-bulb"></i>
                                   </td>
					<td><strong>카카오페이</strong></td>
					<td><strong>이용약관</strong></td>
					<td>1월 20일 13:13</td>
				</tr>
			</tbody>
		</table>
		<nav aria-label="Page navigation" class="d-flex justify-content-center">
			<ul class="pagination pagination-sm">
				<li class="page-item prev">
					<a class="page-link" href="javascript:void(0);">
                                 	<i class="tf-icon bx bx-chevrons-left"></i>
					</a>
				</li>
				<li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
				<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
				<li class="page-item "><a class="page-link" href="javascript:void(0);">3</a></li>
				<li class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
				<li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
				<li class="page-item next">
					<a class="page-link" href="javascript:void(0);">
						<i class="tf-icon bx bx-chevrons-right"></i>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</div>
