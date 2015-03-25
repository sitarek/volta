//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets

$( document ).ready(function() {
  $('#js-load-state').click(function(){
    $('#js-load-state').text('laoding.. ');
    $('#js-load-state').attr('disabled', 'true');
  });
});
