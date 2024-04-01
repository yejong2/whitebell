<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="inner-card-body" class="card-body" style="height: 82vh; overflow-y: auto;">
     <h4 class="card-header mb-0">메일 쓰기</h4>
     <form>
         <div class="btn-toolbar demo-inline-spacing justify-content-end" role="toolbar" aria-label="Toolbar with button groups">
             <div class="btn-group, text-end mb-3" role="group" aria-label="First group">
                 <button type="button" class="btn btn-outline-secondary">작성 취소</button>
                 <button type="button" class="btn btn-outline-secondary">메일 전송 예약</button>
                 <button type="button" class="btn btn-outline-secondary">메일 번역</button>
                 <button type="button" class="btn btn-outline-secondary">임시 저장</button>
                 <button type="button" class="btn btn-outline-secondary">주소록</button>
             </div>
         </div>
         <div class="mb-3">
             <label for="recipient" class="form-label">받는 분</label>
             <input type="email" class="form-control" id="recipient" placeholder="이메일 주소">
             <label for="cc" class="form-label">참조</label>
             <input type="email" class="form-control" id="cc" placeholder="이메일 주소">
         </div>
         <div class="mb-3">
             <label for="subject" class="form-label">제목</label>
             <input type="text" class="form-control" id="subject" placeholder="제목을 입력하세요">
         </div>
         <div class="mb-3">
             <label for="message" class="form-label">내용</label>
             <div class="mt-3">
                 <textarea id="ckeditor-editor" name="ckeditor-editor" rows="15"></textarea>
             </div>
         </div>
         <div class="mb-3">
             <label for="attachment" class="form-label">첨부 파일</label>
             <input type="file" class="form-control" id="attachment" name="attachment">
         </div>
         <div class="text-end mb-3">
             <button type="submit" class="btn btn-primary">메일 보내기</button>
         </div>
	</form>
</div>

