$( document ).ready(function() {
	var csrfToken = $('meta[name="csrf-token"]').attr("content");
	$( ".search-asistentes" ).on("change",function() {
		//******
		var ul = document.getElementById("coincidenciasList");
		ul.innerHTML = "";
	 	var div = document.createElement("div");
	 	div.setAttribute('class', "spinner-border");
	 	div.setAttribute("role","status");
	 	var span = document.createElement("span");
	 	span.setAttribute('class', "sr-only");
	 	div.appendChild(span);
	 	var li = document.createElement("li");
		li.setAttribute('class', "list-group-item");
	 	li.appendChild(div);
	 	ul.appendChild(li);
		//*******
		var url = window.location.href.split("%2F")[0]+"%2F";
	    var nombre = $('#asistente-nombre').val();
	    var apellido_paterno = $('#asistente-apellido_paterno').val();
	    var apellido_materno = $('#asistente-apellido_materno').val();
	    $.ajax({
			method:"POST",
		  	url: url+"getasistentes",
		  	data: {
		    	nombre: nombre,
		    	apellido_paterno: apellido_paterno,
		    	apellido_materno: apellido_materno,
		    	_csrf : csrfToken,
		  	},
		  	success: function( response ) {
			 console.log(response);
			 response = jQuery.parseJSON(response);
			 var ul = document.getElementById("coincidenciasList");
			 ul.innerHTML = "";
			 $.each(response, function(index, item){
				var url = window.location.href.split("%2F")[0]+"%2Fasistenteupdate&id="+index;
			 	var li = document.createElement("li");
				li.setAttribute('class', "list-group-item");
				var a = document.createElement("a");
				a.innerHTML = "Cargar registro";
				a.setAttribute('href', url);
				a.setAttribute('class', "btn btn-success");
				var txt = document.createTextNode(item);
				li.appendChild(txt);
				li.appendChild(a);
				ul.appendChild(li);
			 /*
			 */
			 });
		  	},
			failure:function(response){
				 console.log("Failure "+ response);
			},
			error: function(response){
				 console.log("Error "+ response);
			},
		});
	});
	$( "#rol-authority" ).on("change",function() {
		$("#rol-nombre").val($( "#rol-authority option:selected" ).text());
	});
});