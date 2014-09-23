$(document).ready(function(){ 
var loaded = true; 
var top = $("#fix").offset().top; 
function Add_Data() 
{ 
var scrolla=$(window).scrollTop(); 
var cha=parseInt(top)-parseInt( scrolla); 
if(loaded && cha<=0) 
{ 
$("#fix").removeClass("fix2").addClass("fix1"); 
loaded=false; 
} 
if(!loaded && cha>0) 
{ 
$("#fix").removeClass("fix1").addClass("fix2"); 
loaded=true; 
} 
} 
$(window).scroll(Add_Data); 
}); 



$(document).ready(function(){
	var  top1=$("#pro-introduce").offset().top;
	var  top2=$("#pro-data").offset().top;
	var  top3=$("#pro-invest").offset().top;
	var  top4=$("#pro-map").offset().top;
	function Add_Data()
	{
		var scrolla=$(window).scrollTop();
		var cha1=parseInt(top1)-parseInt( scrolla); 
		var cha2=parseInt(top2)-parseInt( scrolla); 
		var cha3=parseInt(top3)-parseInt( scrolla); 
		var cha4=parseInt(top4)-parseInt( scrolla); 
		if(cha2>200){
			$("#tab1").removeClass("tab-item2").addClass("tab-item1"); 
			$("#tab2").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab3").removeClass("tab-item1").addClass("tab-item2");  
			$("#tab4").removeClass("tab-item1").addClass("tab-item2");  		
		}
		if(cha2<=200&&cha3>200){
			$("#tab1").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab2").removeClass("tab-item2").addClass("tab-item1"); 
			$("#tab3").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab4").removeClass("tab-item1").addClass("tab-item2"); 
		}
        if(cha3<=200&&cha4>200){
        	$("#tab1").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab2").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab3").removeClass("tab-item2").addClass("tab-item1");
			$("#tab4").removeClass("tab-item1").addClass("tab-item2");  
        }
         if(cha4<=200){
        	$("#tab1").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab2").removeClass("tab-item1").addClass("tab-item2"); 
			$("#tab3").removeClass("tab-item1").addClass("tab-item2");
			$("#tab4").removeClass("tab-item2").addClass("tab-item1");  
        }


	}
	$(window).scroll(Add_Data); 
	}); 