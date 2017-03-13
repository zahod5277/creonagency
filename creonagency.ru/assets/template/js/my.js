$(window).load(function(){
// Берем действие 
var action = 'quickview'; 
$.post('ajax.php', {action: action}, function(data) { 
// Выдаем ответ 
$('#ajax-cli').html(data); 
$('#snip1').owlCarousel({loop:true,margin:5,nav:true,items:2,responsive:{699:{items:4,margin:10}}});
$('#snip2').owlCarousel({loop:true,margin:0,nav:true,items:1,responsive:{699:{items:4,margin:10}}});
});

});
