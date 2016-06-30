var num = 0;
$('#Left').click(function() {
	alert(123)
	num++;
	if (num >= 3) {
		num = 0;
	}
	//var index = $('.myul li').index(this);
	$('.Cbody li').eq(num).stop(true).fadeIn(700).siblings('li').fadeOut();
})

$('#Right').click(function() {

	if (num <= 0) {
		num = 3;
	}
	num--;
	//var index = $('.myul li').index(this);
	$('.Cbody li').eq(num).stop(true).fadeIn(700).siblings('li').fadeOut();
})

var numClick = function(numer) {
	$('.Cbody li').eq(numer).fadeIn(700).siblings('li').fadeOut();
}