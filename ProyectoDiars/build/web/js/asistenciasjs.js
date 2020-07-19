(function(){
 var actualizarHora = function(){
        var fecha = new Date(),
            horas = fecha.getHours(),
            ampm,
            minutos = fecha.getMinutes(), 
            segundos = fecha.getSeconds(), 
            diaSemana = fecha.getDay(), 
            dia = fecha.getDate(), 
            mes = fecha.getMonth(), 
            year = fecha.getFullYear();


            var pHoras = document.getElementsByName('txtHoras'),
            pAMPM = document.getElementById('ampm'),
            pMinutos = document.getElementsByName('txtMin'),
            pSegundos = document.getElementsByName('txtSeg'),
            pFecha = document.getElementsByName('txtFecha'),
            pFecha2 = document.getElementsByName('txtFecha2'),
            pFecha3 = document.getElementsByName('txtFecha3'),
            pFecha4 = document.getElementsByName('txtFecha4'),
            pEstado = document.getElementsByName('txtestado');
    var numero;
    var estado;

         var semana = ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'];

         var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
        if(meses[mes]=='Enero'){numero="01";}else if(meses[mes]=='Febrero'){numero="02";}else if(meses[mes]=='Marzo'){numero="03";
        }else if(meses[mes]=='Abril'){numero="04";}else if(meses[mes]=='Mayo'){numero="05";}else if(meses[mes]=='Junio'){numero="06";
        }else if(meses[mes]=='Julio'){numero="07";}else if(meses[mes]=='Agosto'){numero="08";}else if(meses[mes]=='Septiembre')
        {numero="09";}else if(meses[mes]=='Octubre'){numero="10";}else if(meses[mes]=='Noviembre'){numero="11";}else{numero="12";}
         pFecha[0].value =semana[diaSemana]+" "+dia+" "+meses[mes]+" "+year;
         pFecha2[0].value =dia;
         pFecha3[0].value =numero;
         pFecha4[0].value =year;
         if(horas >= 12){
          horas = horas - 12;
          ampm = 'PM';
         }else{
          ampm = 'AM';
         }
        
        if(horas == 0){
         horas = 12;
        };
        pHoras[0].value = horas;
        pAMPM.textContent = ampm;

          if(minutos <10){ minutos = "0" + minutos};
          if(segundos < 10){ segundos = "0" + segundos};

 pMinutos[0].value = minutos;
 pSegundos[0].value = segundos;
     if(ampm=="AM"){
     if(horas==7){
           $('.btn__submit2').hide();
         $('.btn__submit').show();
         if(minutos<=35){
             estado="ASISTIO";
         }
         else{
             estado="TARDANZA";
         }
     }
     else if(horas>=8 && horas<=9){
          $('.btn__submit2').hide();
         $('.btn__submit').show();
          estado="TARDANZA";
     }
     else{$('.btn__submit').hide();
        $('.btn__submit2').hide();estado="SALIDA";}
 }else{
     if(horas>=1 && horas<=3){
         $('.btn__submit').hide();
         $('.btn__submit2').show();
     estado="SALIDA";
     } else{
        $('.btn__submit').hide();
        $('.btn__submit2').hide();
         estado="SALIDA";
     }
     
     
     }
    
 pEstado[0].value = estado;
 };
actualizarHora();
 var intervalo = setInterval(actualizarHora, 50);
}())