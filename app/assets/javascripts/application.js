// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require rails.validations
//= require rails.validations.simple_form
//= require jquery_ujs
//= require turbolinks

$(function(){
	setTimeout(function(){
		$('.error_message').fadeOut("slow", function(){
			$(this).remove;
		})
	},2000);

	$("#search-box").keyup(function() {
	    $.get($("#search-box").attr("action"), $("#search-box").serialize(), null, "script");
     	return false;

  	});
  
  //$("#search-box").submit(function(){
  //   var queryString = $(this).serialize(); //gets the values in your form
  //   var url = $(this).attr("action"); //your action url
  //   $("#contacts").load(url+"?"+queryString).fadeIn('slow');
  //   return false; //this prevents your form from doing its default behavior.
 	// });
  

})


