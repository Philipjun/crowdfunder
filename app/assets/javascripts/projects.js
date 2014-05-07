// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
	var total = 0
  $(".pledgeSubmit").click(function() {
    // var amount = Number($(this).children('#amount').text());
    var amount = Number($(this).parent('#amount').text());
    // need to select prev #amount and get inner html or text
    // console.log($(this).parent().parent().find('#amount')	);
    console.log($(this).parent().children().prev('p'));

    total += amount;
    $("#pledgeTotal").text(total);
  });
});