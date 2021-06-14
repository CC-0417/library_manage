$(function() {
// 轮播图
  var $bnLi = $('.bn-alp li');
  var index = 0;
  var timer;
  
  function auto() {
  	timer = setInterval(function() {
  		index++;
  
  		fn();
  	}, 2000);
  }
  function fn() {
	  if(index>3){
		  index=0;
	  }
  	// eq(index)列表中的第index个元素，从0开始算起
  	$bnLi.eq(index).stop(true).fadeIn().siblings().stop(true).fadeOut();
  }
  auto();

})
