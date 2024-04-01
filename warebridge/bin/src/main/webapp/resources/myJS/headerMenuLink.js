$("#header-mypage").on('click',function(event){
	event.preventDefault();
	let contentsPlace = document.querySelector("#div-body");
	let url = this.href
	$.ajax({    
		type : 'get',           // 타입 (get, post, put 등등)    
		url : url,           // 요청할 서버url    
		dataType : 'html',
		success : function(resp) {    
			let parser = new DOMParser();
			let newDoc = parser.parseFromString(resp, "text/html");
			let contents = newDoc.getElementById("div-body");
			let preTag = contents.innerHTML;
			contentsPlace.innerHTML = preTag;
		},    
		error : function(request, status, error) { 
			console.error(error);
		},
		complete : function(){
			$("<script/>", {
		        src: `${cPath}/resources/myJS/subMenu.js`,
		        type: "text/javascript"
		    }).appendTo("body");
		}
	})
})












