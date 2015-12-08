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
//= require jquery_ujs
//= require foundation
//= require_tree .

$(document).ready(function() {
  $('#netOptions').hide();
  $('#cutOptions').hide();

  $("input[name='scoreType']").click(function() {
     if($(this).attr('value') == 'net') {
          $('#netOptions').show();
     }
     else {
          $('#netOptions').hide();
     }
  });

  $("input[name='cut']").click(function() {
     if($(this).attr('value') == 'yes') {
          $('#cutOptions').show();
     }
     else {
          $('#cutOptions').hide();
     }
  });

  $(function(){
    var $select = $(".handicap");
    for (i=1;i<=100;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
  });
  function validateForm() {
    var x = document.forms["eventForm"]["name"].value;
    if (x == null || x == "") {
        alert("Event name must be filled out");
        return false;
    }
  };
});
