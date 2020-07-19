$(document).ready(function() {
       $('.ocultame').hide();
    $("input[type=radio]").click(function(event){
        var valor = $(event.target).val();
        if(valor =="Papa"){
            $(".divpadres1").show();
            $(".divpadres2").hide();
        } else if (valor == "Mama") {
            $(".divpadres2").show();
            $(".divpadres1").hide();
        } else if(valor == "Nuevo"){ 
            $(".ocultobuscar").hide();
        }else if(valor == "Reingreso"){
            $(".ocultobuscar").css({'width': '100%','display':'flex'});
            $(".ocultobuscar").show();
        }else{
            
        }
    });
      
});