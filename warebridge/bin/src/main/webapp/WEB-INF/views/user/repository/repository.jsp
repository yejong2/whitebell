<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />
<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3">
						<span>자료실</span>
					</div>
					<button class="btn btn-primary btn-compose">업로드</button>
				</div>
				<div id="layout-menu"
					class="card-body row d-grid menu menu-vertical ">
					<ul class="menu-inner">
						<li class="menu-item active"><a href="javascript:;"
							class="menu-link">
								<div class="sub-side-div">전사 자료실</div>
						</a></li>
						<li class="menu-item"><a href="javascript:;"
							class="menu-link menu-toggle">
								<div class="sub-side-div">팀 자료실</div>
						</a>
							<ul class="menu-sub">
								<li class="menu-item"><a href="javascript:;"
									class="menu-link">
										<div class="sub-sub-div">팀1</div>
								</a></li>
								<li class="menu-item"><a href="javascript:;"
									class="menu-link">
										<div class="sub-sub-div">팀2</div>
								</a></li>
								<li class="menu-item"><a href="javascript:;"
									class="menu-link">
										<div class="sub-sub-div">팀3</div>
								</a></li>
							</ul></li>
						<li class="menu-item"><a href="javascript:;"
							class="menu-link">
								<div class="sub-side-div">개인 자료실</div>
						</a></li>
					</ul>
					<!-- 					</aside> -->
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-8 col-md-0">
		<div class="row">
			<div class="col col-md-12 col-6">
				<div class="card">
					<div class="card-body" style="height: 82vh">
						<div class="board_title">
							<strong>전사자료실</strong> <br>
							<div class="mb-3">
								<button type="button" class="btn btn-light"
									onclick="location.href='/newPost'">새폴더</button>
								<button type="button" class="btn btn-light"
									onclick="download()">다운로드</button>
								<button type="button" class="btn btn-light"
									onclick="deletePosts()">삭제</button>
								<button type="button" class="btn btn-light"
									onclick="deletePosts()">메일보내기</button>
								<button type="button" class="btn btn-light"
									onclick="registerNotice()">권한관리</button>
							</div>
						</div>
						<div class="board_list_wrap">
							<table class="table">
								<thead>
									<tr>
										<th>
                                            <input type="checkbox" id="selectAllCheckbox" onchange="selectAll(this)">
                                        </th>
										<th style="width: 40%" class="text-center">이름</th>
										<th class="text-left">크기</th>
										<th class="text-left">확장자</th>
										<th class="text-left">등록날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox"></td>
										<td><box-icon type='solid' name='folder'></box-icon><a href="#">폴더1</a></td>
										<td class="text-left"></td>
										<td class="text-left"></td>
										<td class="text-left">2024-02-14</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td><a href="#">파일2</a></td>
										<td class="text-left">5MB</td>
										<td class="text-left">.docx</td>
										<td class="text-left">2024-02-13</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td><a href="#">파일3</a></td>
										<td class="text-left">3MB</td>
										<td class="text-left">.xlsx</td>
										<td class="text-left">2024-02-12</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td><a href="#">파일4</a></td>
										<td class="text-left">8MB</td>
										<td class="text-left">.jpg</td>
										<td class="text-left">2024-02-11</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td><a href="#">파일5</a></td>
										<td class="text-left">15MB</td>
										<td class="text-left">.zip</td>
										<td class="text-left">2024-02-10</td>
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

<script>
	function selectAll(select) {
		const checkboxes = document.querySelectorAll('tbody input[type="checkbox"]');
		checkboxes.forEach(checkbox => {
			checkbox.checked = select.checked;
		});
	}

    function changeTeam(select) {
        // 여기에 선택한 팀에 따라 동작할 로직을 추가할 수 있습니다.
    }
</script>