// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function() {
  $('.secondary').click(function() {
    $(this).children().show();
  });
  $('#show-secondary-fields').click(function() {
    $('.secondary').toggle();
  });
});