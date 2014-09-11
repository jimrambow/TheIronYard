$(document).ready(function() {

$(".notice").fadeOut(3000);

$(".notice").on( function() {
  $(".notice").fadeOut(3000);
})

$("form > input").keyup( function() {
    if ($(this).val() == "") {
      $(".submit_button").attr("disabled", "disabled")}
    else{
      $(".submit_button").removeAttr("disabled")
    }
})

$(".page_number").click( function() {
}

$("li").click( function() {
    $(this).remove()
})

$(".get_patients").click( function() {
  $.ajax({
    url: "/hospitals/ajax/patients",
    type: "GET",
    dataType: "script"
  })
})



$(".search_patients").click( function() {
  console.log($('.patient_search').val())
  $.ajax({
    url: "/patients",
    dataType: "script",
    type: "GET",
    data: {q: $('.patient_search').val()}
  })
})

$(".page_number").click(function() {
    var page_number = $(this).html()
    $(".patient_page").addClass("hidden")
    $(".group_" + page_number).removeClass("hidden")
})



})