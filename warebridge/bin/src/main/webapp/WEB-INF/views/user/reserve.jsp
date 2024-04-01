<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3">
						<span>예약</span>
					</div>
					<button class="btn btn-primary btn-compose">미정</button>
				</div>
				<div id="layout-menu"
					class="card-body row d-grid menu menu-vertical ">
					<!-- 					<aside id="layout-menu" class="row d-grid menu menu-vertical"> -->
					<ul class="menu-inner">
						<li class="menu-item active"><a
							href="<%=request.getContextPath()%>/user/reserve"
							class="menu-link">
								<div class="sub-side-div">시설 예약</div>
						</a></li>
						<li class="menu-item"><a href="javascript:;"
							class="menu-link">
								<div class="sub-side-div">차량 예약</div>
						</a></li>
						<li class="menu-item"><a href="javascript:;"
							class="menu-link">
								<div class="sub-side-div">비품 예약</div>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-10 col-md-0">
		<div class="row">
			<div class="col col-md-12 col-6">
				<div class="card">
					<h5 class="card-header"
						style="margin-bottom: 0; padding-bottom: 0;">시설 현황</h5>
					<div class="table-responsive text-nowrap">
						<table class="table table-sm">
							<thead>
								<tr>
									<th>회의실</th>
									<th>위치</th>
									<th>세부사항</th>
									<th>예약하기</th>
								</tr>
							</thead>
							<tbody class="table-border-bottom-0">
								<tr>
									<td>
										<i class="fab fa-angular fa-lg text-danger me-3"></i>
										<strong>봄</strong>
									</td>
									<td>30주년 기념관 203호</td>
									<td>
										<span class="badge bg-label-primary me-1">세부사항</span>
									</td>
									<td>
										<div class="dropdown">
											<button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
												<i class="bx bx-dots-vertical-rounded"></i>
											</button>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="javascript:void(0);">
												<i class="bx bx-edit-alt me-1"></i> 
												</a> 
												<a class="dropdown-item" href="javascript:void(0);">
												<i class="bx bx-trash me-1"></i> Delete
												</a>
											</div>
										</div>
									</td>
								</tr>

								
							</tbody>
						</table>
						<div class="col col-md-12 col-0">
							<div class="row">
								<div class="card">
									<div class="card-header"
										style="margin-bottom: 0; padding-bottom: 0;">
										<h5 class="card-title text-center">2024년 2월</h5>
									</div>
									<div class="card-body">
										<table class="table table-bordered">
											<thead>
												<tr class="table-danger">
													<td>날짜</td>
													<td class="text-center">2</td>
													<td class="text-center">3</td>
													<td class="text-center">4</td>
													<td class="text-center">5</td>
													<td class="text-center">6</td>
												</tr>
											</thead>
											<tr class="table-danger">
												<th style="width: 5%;">시간</th>
												<th scope="col" class="text-center">월</th>
												<th scope="col" class="text-center">화</th>
												<th scope="col" class="text-center">수</th>
												<th scope="col" class="text-center">목</th>
												<th scope="col" class="text-center">금</th>
											</tr>
											<tbody>

												<tr>
													<td><strong>09:00 ~ 10:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>10:00 ~ 11:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>11:00 ~ 12:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>12:00 ~ 13:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>13:00 ~ 14:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>14:00 ~ 15:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>15:00 ~ 16:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>16:00 ~ 17:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td><strong>17:00 ~ 18:00</strong></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>