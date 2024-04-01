<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="inner-card-body" class="card-body" style="height: 82vh">
	<div id="calendar"></div>
</div>
	<div class="col-lg-8 col-md-0">
		<div class="row">
			<div class="col col-md-12 col-6">
				<div class="card">
					<div class="card-body" style="height: 82vh">
						<div class="board_write_wrap">
							<div class="board_write">
								<div class="title">
									<dl>
										<dt>제목</dt>
										<dd>
											<input type="text" placeholder="제목 입력">
										</dd>
									</dl>
									<hr>
								</div>
								<section class="mg-b-10u">
									<div class="file-uploader disabled">
										<input class="file-uploader-input" type="file"
											name="file-uploader-1" multiple />
										<div class="file-uploader-head">
											<p class="title">파일 첨부</p>
											<p class="description">500kB 이하의 jpg, png 파일만 등록할 수 있습니다.</p>
											<button class="btn btn-primary btn-container btn-uploader"
												disabled>
												<span class="label">파일 추가</span>
											</button>
										</div>
									</div>
								</section>
								<hr>
								<div class="cont">
									<textarea placeholder="내용 입력"></textarea>
								</div>
							</div>
							<div class="bt_wrap">
								<a href="view.html" class="on">등록</a> <a href="list.html">취소</a>
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


