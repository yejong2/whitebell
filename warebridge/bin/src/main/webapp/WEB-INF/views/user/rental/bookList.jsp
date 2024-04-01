<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="card">
	<h5 class="card-header">예약 현황</h5>
	<div class="card-body">
		<div class="table-responsive text-nowrap">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>예약 코드</th>
						<th>대여물 이름</th>
						<th>예약자</th>
						<th>예약시작일시</th>
						<th>예약끝일시</th>
						<th>대여물 비고</th>
						<th>취소</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							 <span class="fw-medium">A0000001</span>
						 </td>
						<td>305호</td>
						<td>하예종</td>
						<td>02-14 / 14:00</td>
						<td>02-14 / 16:00</td>
						<td>
							<span class="badge bg-label-primary me-1">없음</span>
						</td>
						<td>
							<div class="dropdown">
								<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
									data-bs-toggle="dropdown">
									<i class="bx bx-dots-vertical-rounded"></i>
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="javascript:void(0);">
									<i class="bx bx-edit-alt me-1"></i> Edit</a> 
									<a class="dropdown-item" href="javascript:void(0);">
									<i class="bx bx-trash me-1"></i>Delete</a>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

