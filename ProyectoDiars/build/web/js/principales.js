$(document).ready(function(){
var contador=1;
 var bool1=false;
 var bool2=false;

$('nav').animate({left: '-100%'});
$('.menu_bar').click(function(){
	if(contador==1){
        $('nav').animate({left: '0.5%'});
        contador =0;
	} else{
	contador=1;
	$('nav').animate({left: '-100%'});
	}
 });
$('.alertita').click(function(){
  alertify.success("¡Suba su archivo en PDF!");
 });
$('.ocultame').hide();
  });