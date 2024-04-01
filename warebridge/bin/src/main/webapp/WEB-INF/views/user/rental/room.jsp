<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card bg-menu-theme sub-side-menu" style="height: 82vh">
	<div class="d-flex row">
		<div class="card-header d-grid">
			<div class="header-main mb-3"> 
				<span>예약</span>
			</div>
			<button class="btn btn-primary btn-compose" data-btn-location="">미정</button>
		</div>
		<div id="layout-menu" class="card-body rowmenu menu-vertical inner-sub-menu" >
			<ul class="menu-inner">
				<li class="menu-item active"><a
					href="<%=request.getContextPath()%>/user/rental/room"
					class="menu-link">
						<div class="sub-side-div">시설 예약</div>
				</a></li>
				<li class="menu-item"><a
					href="<%=request.getContextPath()%>/user/rental/car"
					class="menu-link">
						<div class="sub-side-div">차량 예약</div>
				</a></li>
				<li class="menu-item"><a
					href="<%=request.getContextPath()%>/user/rental/equip"
						class="menu-link">
							<div class="sub-side-div">비품 예약</div>
					</a></li>
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
				<h5 style="margin-bottom: 0; padding-bottom: 0;">시설 현황</h5>
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
									<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
										<strong>봄</strong></td>
									<td>30주년 기념관 203호</td>
									<td>
										<button class="btn btn-primary btn-compose" type="button" data-bs-toggle="modal"
											data-bs-target="#exLargeModal">세부사항</button>
										
									</td>
									<td>
										<div class="dropdown">
											<button type="button"
												class="btn p-0 dropdown-toggle hide-arrow"
												data-bs-toggle="dropdown">
												<i class="bx bx-dots-vertical-rounded"></i>
											</button>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="javascript:void(0);"> <i
													class="bx bx-edit-alt me-1"></i> 예약하기
												</a> <a class="dropdown-item" href="javascript:void(0);"> <i
													class="bx bx-trash me-1"></i> 예약 취소
												</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<h5 class="card-title text-center">2024년 2월</h5>
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
										<td><strong>08:00 ~ 09:00</strong></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
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
									<tr>
										<td><strong>18:00 ~ 19:00</strong></td>
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


