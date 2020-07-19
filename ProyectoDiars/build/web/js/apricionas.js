$(document).ready(function(){
$('.ocultame').hide();
 $.fn.datetimepicker.dates['en'] = {
    days: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"],
    daysShort: ["Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sab", "Dom"],
    daysMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa", "Do"],
    months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
    monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
    meridiem: '',
    today: "Hoy"
  };

  //Se crea la variable para establecer la fecha actual
  var hoy = new Date();
  var dd = hoy.getDate();
  var mm = hoy.getMonth()+1;
  var yyyy = hoy.getFullYear();

  if(dd<10) {
      dd='0'+dd;
  } 

  if(mm<10) {
      mm='0'+mm;
  }

  $(".sape").datetimepicker({
    format: "dd/mm/yyyy hh:ii",
    autoclose: true,
    todayBtn: true,
    todayHighlight: true,
    pickerPosition: "bottom-left",
    //startDate: hoy,
    //startView: 3,
    //endDate: hoy,
    forceParse: false
    
  });
    $(".sape2").datetimepicker({
    format: "dd/mm/yyyy hh:ii",
    autoclose: true,
    todayBtn: true,
    todayHighlight: true,
    pickerPosition: "bottom-left",
    //startDate: hoy,
    //startView: 3,
    //endDate: hoy,
    forceParse: false
    
  });
  
  //Se establece que el calendario comienzo en la fecha actual
  $('.sape').datetimepicker('setStartDate', hoy);
  $('.sape2').datetimepicker('setStartDate', hoy);
  
});