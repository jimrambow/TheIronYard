$(document).ready(function() {
console.log($('.notice'))


$(".notice").fadeOut(3000)


$("form > input").keyup( function() {
    if ($(this).val() == "") {
      $(".submit_button").attr("disabled", "disabled")}
    else{
      $(".submit_button").removeAttr("disabled")
    }

})

}