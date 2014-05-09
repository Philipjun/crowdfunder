// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function() {
  // Replaces total amount pledged when pledge clicked
	var total = Number($('#pledgeTotal').text());
  $(".pledgeSubmit").click(function() {
    // var amount = Number(($(this).parent().children().prev('p').text()));
    var amount = Number(($(this).parent().children().prev('.price').text()));
    total += amount;
    console.log(($(this).parent().children().prev('.price').text()));
    $("#pledgeTotal").text(total);
  });
});