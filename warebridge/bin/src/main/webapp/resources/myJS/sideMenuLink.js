let cPath = document.querySelector("body").dataset.contextPath
$("aside").on('click',".menu-link",function(event){
	event.preventDefault();
	let myparent = $(this).parents("li");
	let contentsPlace = document.querySelector("#div-body");
	url = this.href
	$.ajax({    
		type : 'get',           // 타입 (get, post, put 등등)    
		url : url,           // 요청할 서버url    
		dataType : 'html',
		success : function(resp) {    
			myparent.siblings().removeClass("active");
			myparent.addClass("active");
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


			if(url.includes("calendar")){
				$("<script/>", {
			        src: `${cPath}/resources/lib/fullcalendar-6.1.10/dist/index.global.min.js`,
			        type: "text/javascript"
			    }).appendTo("body");
				$("<script/>", {
			        src: `${cPath}/resources/myJS/myCalendar.js`,
			        type: "text/javascript"
			    }).appendTo("body");
			};
		}
	})
})

