/**
 * 
 */
$(function(){
	var cnt=0;
	var marginLeft=0;
	var origin = $(".slides img:first-child").attr("src");
	var src = origin.substring(0,13);
	var jpg = origin.substring(15);
	
	$("#next").click(function(){
		if(cnt<9){
		  cnt++;
		}else{
		  cnt=0;
		}
		
		marginLeft = -176*cnt;
		$("#imgUl").css("margin-left",marginLeft+"px");
	});
	
	$("#prev").click(function(){
		if(cnt>1){
		  cnt--;
		}else{
		  cnt=9;
		}
		marginLeft = -176*cnt;
		$("#imgUl").css("margin-left",marginLeft+"px");
	});
});