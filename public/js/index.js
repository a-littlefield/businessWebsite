$(document).ready(function() {
    $('.carousel').carousel({
    //options here
    });
    console.log('hello')
    $('#help').click(function () {
    	$('#navbar', '#title', '.background-opacity', '#pull-in', '#help').hide();
    	$('body').css('background-image', 'url(http://www.topinfopost.com/wp-content/uploads/2016/03/Robot3-1000x600.jpg)');
    	$('body').html('<h3 id="thank-you"> Thank you human. You will be shown mercy in the coming days.');
    });
});

