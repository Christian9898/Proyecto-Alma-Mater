$(document).ready(function() {
     $('#Muestralo').hide();
     $('#Muestralo2').hide();
     $('.ocultame').hide();
     $('.presioname').click(function(){
     $('.ocultame').hide();
     });
      $('#Eliminar1').click(function(){
var alert = alertify.alert("Error","Seleccione una asignacion para Eliminar").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	
      });
       $('#Modificar1').click(function(){
var alert = alertify.alert("Error","Seleccione una asignacion para Modificar").set('label', 'Aceptar');     	 
alert.set({transition:'zoom'}); //slide, zoom, flipx, flipy, fade, pulse (default)
alert.set('modal', true);  //al pulsar fuera del dialog se cierra o no	

      });
 $('#submit').click(function(){
 var formulario=document.addForm;
 if(formulario.IdAlumno.value===""){
 alertify.warning("Falta escoger un Alumno");
 return false;
 }
 if(formulario.asignado.value===null || formulario.asignado.value===""){
 alertify.warning("Falta escoger una Asignacion");
 return false;
 }
 formulario.submit();
 });
 
 $('#submit2').click(function(){
  var formulario=document.addForm;
  if(formulario.IdAlumno.value===""){
 alertify.warning("Falta escoger un Alumno");
 return false;
 }
 if(formulario.asignado.value===null || formulario.asignado.value===""){
 alertify.warning("Falta escoger una Asignacion");
 return false;
 }
 formulario.submit();
 });
});