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
 if(formulario.IdDocente.value===""){
 alertify.warning("Falta escoger un Docente");
 return false;
 }
 if(formulario.cbNivel.value===null || formulario.cbNivel.value===""){
 alertify.warning("Falta escoger un Nivel");
 return false;
 }
 if(formulario.cbGrado.value===null || formulario.cbGrado.value===""){
 alertify.warning("Falta escoger un Grado");
 return false;
 }
  if(formulario.cbMateria.value===null || formulario.cbMateria.value===""){
 alertify.warning("Falta escoger una Materia");
 return false;
 }
 if(formulario.cbSeccion.value===null || formulario.cbSeccion.value===""){
 alertify.warning("Falta escoger una Seccion");
 return false;
 }
 if(formulario.cbDia.value===null || formulario.cbDia.value===""){
 alertify.warning("Falta escoger un Dia");
 return false;
 }
 if(formulario.cbTurno.value===null || formulario.cbTurno.value===""){
 alertify.warning("Falta escoger un Turno");
 return false;
 }
 if(formulario.HoraIn.value==="" || formulario.HoraIn.value===null){
 alertify.warning("Falta asignar Hora de Inicio");
 return false;
 }
 if(formulario.HoraFin.value==="" || formulario.HoraFin.value===null){
 alertify.warning("Falta asignar Hora de Fin");
 return false;
 }
 $('#Muestralo').show();
 document.getElementById("aparicion").innerHTML='<input type="hidden" id="Muestralo" name="Guardar" value="Guardar">';
 formulario.submit();
 });
 
 $('#submit2').click(function(){
  var formulario=document.addForm;
 if(formulario.IdDocente.value===""){
 alertify.warning("Falta escoger un Docente");
 return false;
 }
 if(formulario.cbNivel.value===null || formulario.cbNivel.value===""){
 alertify.warning("Falta escoger un Nivel");
 return false;
 }
 if(formulario.cbGrado.value===null || formulario.cbGrado.value===""){
 alertify.warning("Falta escoger un Grado");
 return false;
 }
  if(formulario.cbMateria.value===null || formulario.cbMateria.value===""){
 alertify.warning("Falta escoger una Materia");
 return false;
 }
 if(formulario.cbSeccion.value===null || formulario.cbSeccion.value===""){
 alertify.warning("Falta escoger una Seccion");
 return false;
 }
 if(formulario.cbDia.value===null || formulario.cbDia.value===""){
 alertify.warning("Falta escoger un Dia");
 return false;
 }
 if(formulario.cbTurno.value===null || formulario.cbTurno.value===""){
 alertify.warning("Falta escoger un Turno");
 return false;
 }
 if(formulario.HoraIn.value==="" || formulario.HoraIn.value===null){
 alertify.warning("Falta asignar Hora de Inicio");
 return false;
 }
 if(formulario.HoraFin.value==="" || formulario.HoraFin.value===null){
 alertify.warning("Falta asignar Hora de Fin");
 return false;
 }
 $('#Muestralo2').show();
 document.getElementById("aparicion").innerHTML='<input type="hidden" id="Muestralo2" name="Modificar" value="Modificar">';
formulario.submit();
 });
               
});