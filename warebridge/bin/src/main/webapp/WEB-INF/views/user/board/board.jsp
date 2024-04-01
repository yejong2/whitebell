<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
   function selectAll(selectAll)  {
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach((checkbox) => {
          checkbox.checked = selectAll.checked
        });
      }
</script>
<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3">
						<span>게시판</span>
					</div>
					<button class="btn btn-primary btn-compose" data-btn-location="/user/board/boardwrite" >게시글 등록</button>
				</div>
				<div id="layout-menu"
					class="card-body row d-grid menu menu-vertical inner-sub-menu">
					<!-- 					<aside id="layout-menu" class="row d-grid menu menu-vertical"> -->
					<ul class="menu-inner">
						<li class="menu-item active"><a href="javascript:;"
							class="menu-link">
								<div class="sub-side-div">전사 게시판</div>
						</a></li>
						<li class="menu-item"><a href="javascript:;"
							class="menu-link  menu-toggle">
								<div class="sub-side-div">팀 게시판</div>
						</a>
							<ul class="menu-sub">
								<li class="menu-item"><a href="javascript:;"
									class="menu-link  menu-toggle">
										<div class="sub-sub-div">팀1</div>
								</a></li>
								<li class="menu-item"><a href="javascript:;"
									class="menu-link  menu-toggle">
										<div class="sub-sub-div">팀2</div>
								</a></li>
								<li class="menu-item"><a href="javascript:;"
									class="menu-link  menu-toggle">
										<div class="sub-sub-div">팀3</div>
								</a></li>
							</ul></li>

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
					<div class="card-body" id="inner-card-body" style="height: 82vh">
							<div class="board_title">
								<strong>전사게시판</strong> <br>
								<div class="mb-3">
									<button type="button" class="btn btn-light"
										onclick="location.href='/newPost'">새글쓰기</button>
									<button type="button" class="btn btn-light"
										onclick="deletePosts()">수정</button>
									<button type="button" class="btn btn-light"
										onclick="deletePosts()">삭제</button>
									<button type="button" class="btn btn-light"
										onclick="deletePosts()">메일보내기</button>
									<button type="button" class="btn btn-light"
										onclick="downloadAttachments()">첨부파일 다운로드</button>
									<button type="button" class="btn btn-light"
										onclick="registerNotice()">공지로 등록</button>
									<button type="button" class="btn btn-light"
										onclick="downloadAttachments()">공지내리기</button>
								</div>
							</div>
							<div class="board_list_wrap">
								<div class="board_list">
									<div class="top">
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault" onclick="selectAll(this)">
										</div>
										<div class="num">번호</div>
										<div class="title">제목</div>
										<div class="writer">글쓴이</div>
										<div class="date">작성일</div>
										<div class="count">조회</div>
									</div>
									<div
										style="background-color: #ccc; border-bottom: 1px solid #ddd; font-size: 0;">
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">
											<span class="icon bx bx-pin"></span>
										</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.(공지)</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
									<div>
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">5</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
									<div>
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">4</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
									<div>
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">3</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
									<div>
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">2</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
									<div>
										<div class="checkbox-col">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div>
										<div class="num">1</div>
										<div class="title">
											<a class="boardA" href="view.html">글 제목이 들어갑니다.</a>
										</div>
										<div class="writer">김이름</div>
										<div class="date">2021.1.15</div>
										<div class="count">33</div>
									</div>
								</div>
								<div class="board_page">
									<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
									<a href="#" class="num on">1</a> <a href="#" class="num">2</a>
									<a href="#" class="num">3</a> <a href="#" class="num">4</a> <a
										href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
										href="#" class="bt last">>></a>
								</div>
								<div
									class="table_search table_new_search d-flex justify-content-center ">
									<select id="duration">
										<option value="all">전체기간</option>
										<option value="-1">1개월</option>
										<option value="-6">6개월</option>
										<option value="-12">1년</option>
									</select>

									<div id="durationPeriod" class="search_option"
										style="display: none">
										<input id="fromDate" class="txt_mini wfix_small" type="text">
										~ <input id="toDate" class="txt_mini wfix_small" type="text">
									</div>

									<select style="display: inline" id="searchTypes">
										<option value="titleAndContent">제목+내용</option>
										<option value="titleOnly">제목</option>
										<option value="userName">작성자</option>
									</select>
									<div class="search2">
										<div class="search_wrap d-flex">
											<div class="col-auto">
												<input type="text" name="buyerName" value=""
													placeholder="검색" />
											</div>
											<div class="col-auto">
												<button data-pg-role="searchBtn">검색</button>
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
	</div>
</div>


