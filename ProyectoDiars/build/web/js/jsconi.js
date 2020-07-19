// Preparando todo
$(document).ready(function(){
	//Dejar resaltado el menú activo
	var menus = $(".datagrid #tr");
	 var obten;
         var obten2;
	menus.click(function(){
		menus.removeClass("activar");
                menus.addClass("hoversh");
		$(this).addClass("activar");
                $(this).removeClass("hoversh");
                obten = $(this).find("td")[0].innerHTML;
                obten2 =$(this).find("td")[1].innerHTML;
	});
        var botonde = $("#Derecha");
        botonde.click(function(){
            if( menus.hasClass('activar') && obten!=null && obten2!=null){
             $(".datagriddo thead").after($(".activar"));
             menus.removeClass("activar");
             menus.addClass("hoversh");
            }
             obten=null;
             obten2=null;
        });
         var botoniz = $("#Izquierda");
        botoniz.click(function(){
            if( menus.hasClass('activar') && obten!=null && obten2!=null){
             $(".datagrid thead").after($(".activar"));
             menus.removeClass("activar");
             menus.addClass("hoversh");
            }
             obten=null;
             obten2=null;
        });
        
        
});









