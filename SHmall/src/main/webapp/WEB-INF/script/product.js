$(function(){
	// 추가버튼
	$("#addBtn").click(function(){
		var producName=$("#productName").val();
		var price=$("#price").val();
		var thumbnail=$("#thumbnail").val();
		var contents=$("#contents").val();
		
		if(productName==""){
			alert("상품명을 적어주세요");
			productName.focus();
			return false;
		}

		if(price==""){
			alert("가격을 적어주세요");
			price.focus();
			return false;
		}
		
		if(thumbnail==""){
			alert("썸네일로 할 파일을 넣어주세요");
			thumbnail.focus();
			return false;
		}
		
		if(contents==""){
			alert("제품의 상세정보를 넣어주세요");
			contents.focus();
			return false;
		}
		
		
		$.ajax({
			type:"post",
			url:"addProductAction",
			data:formData,
			dataType:"text",
			processData:false,
			contentType:false,
			success:function(data){
				alert(data);
			}
		});
	});
	
	// 취소버튼
	$("#cancelBtn").click(function(){
		location.href="./main";
	});
	
	// 수정버튼
	$("#addBtn").click(function(){
		var producName=$("#productName").val();
		var price=$("#price").val();
		var thumbnail=$("#thumbnail").val();
		var contents=$("#contents").val();
		
		if(productName==""){
			alert("상품명을 적어주세요");
			productName.focus();
			return false;
		}

		if(price==""){
			alert("가격을 적어주세요");
			price.focus();
			return false;
		}
		
		if(thumbnail==""){
			alert("썸네일로 할 파일을 넣어주세요");
			thumbnail.focus();
			return false;
		}
		
		if(contents==""){
			alert("제품의 상세정보를 넣어주세요");
			contents.focus();
			return false;
		}
		
		$.ajax({
			type:"post",
			url:"editProductAction",
			data:formData,
			dataType:"text",
			processData:false,
			contentType:false,
			success:function(data){
				alert(data);
			}
		});
	});
	
	// 삭제버튼
	$("deleteBtn").click(function(){
		if(confirm("상품을 정말로 삭제하시겠습니까?")){
			$("#productForm").attr("action","deleteProductAction");
			$("#productForm").submit();
		}
	});
});