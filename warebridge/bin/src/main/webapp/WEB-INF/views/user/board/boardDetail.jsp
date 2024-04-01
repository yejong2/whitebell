<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="inner-card-body" class="card-body" style="height: 82vh">
	<div id="calendar"></div>
</div>
<div class="row">
	<div class="col-lg-2 mb-0 order-0">
		<div class="card" style="height: 82vh">
			<div class="d-flex row">
				<div class="card-header d-grid">
					<div class="header-main mb-3">
						<span>게시판</span>
					</div>
					<button class="btn btn-primary btn-compose">게시글 등록</button>
				</div>
				<div id="layout-menu"
					class="card-body row d-grid menu menu-vertical ">
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
					<div class="card-body" style="height: 82vh">
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

							<div class="board_view_wrap">
								<div class="board_view">
									<div class="title">글 제목이 들어갑니다.</div>
									<div class="info">
										<dl>
											<dt>번호</dt>
											<dd>1</dd>
										</dl>
										<dl>
											<dt>글쓴이</dt>
											<dd>김이름</dd>
										</dl>
										<dl>
											<dt>작성일</dt>
											<dd>2021.1.16</dd>
										</dl>
										<dl>
											<dt>조회</dt>
											<dd>33</dd>
										</dl>
									</div>
									<div class="cont">
										글 내용이 들어갑니다<br> 글 내용이 들어갑니다<br> 글 내용이 들어갑니다<br>
										글 내용이 들어갑니다<br> 글 내용이 들어갑니다<br> 글 내용이 들어갑니다<br>
										글 내용이 들어갑니다<br> 글 내용이 들어갑니다
									</div>
								</div>
								<div class="comment_section">
									<textarea class="form-control" rows="3"
										placeholder="댓글을 입력하세요..."></textarea>
									<button type="button" class="btn btn-success mt-2">댓글
										작성</button>
								</div>
								<div class="bt_wrap">
									<a href="list.html" class="on">목록</a> <a href="edit.html">수정</a>
								</div>
							</div>
							<hr />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
