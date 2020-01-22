function main(){
	var imgObj=document.getElementsByTagName("img");
	var imglen=imgObj.length;
	for(var i=0;i<imglen;i++){
		if(imgObj[i].className=="normal"){
			imgObj[i].setAttribute("src","items/normal.png");
		}
		else if(imgObj[i].className=="goal"){
			imgObj[i].setAttribute("src","items/goal.png");
		}
		else if(imgObj[i].className=="challenge"){
			imgObj[i].setAttribute("src","items/challenge.png");
		}
	}
		
	window.onscroll = function(){
		var hObj = document.getElementsByTagName('h2');
		var navLiObj = document.getElementsByTagName('nav')[0].getElementsByTagName('li');	
		var scrollTop = (document.documentElement.scrollTop || document.body.scrollTop)+2;
		var len=hObj.length;
		
		for(var i=0;i<len;i++) navLiObj[i].style.color = '#cccccc';
		if(scrollTop < hObj[1].offsetTop) navLiObj[0].style.color = '#cccfff';
		if(scrollTop >= hObj[len-1].offsetTop) navLiObj[len-1].style.color = '#cccfff';
		for(i=1;i<len-1;i++){
			if( hObj[i].offsetTop <= scrollTop && scrollTop <= hObj[i+1].offsetTop){
				navLiObj[i].style.color = '#cccfff';
				break;
			}
		}	
	}
}
