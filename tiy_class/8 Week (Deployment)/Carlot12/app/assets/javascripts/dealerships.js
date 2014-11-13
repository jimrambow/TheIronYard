$(document).ready(function() {
  $('.dealership_index_links').click(function(){
    console.log("hi");
    $.ajax({
      url: $(this).attr("dealership_path"),
      type: 'GET',
      dataType: 'script'
    })
  });


  $('.avatar_links').click(function() {
    var avatarString = $(this).attr("avatar_string")
    $.ajax({
      url: "https://api.github.com/users/" + avatarString,
      type: 'GET',
      dataType: 'JSON',
      success: function(data) {
        $(".dealership_show_frame").html("<img src='" + data.avatar_url + "'>")
        // console.log(data);
      }
    })
  })

  $(document).on("click", '.create_car',function() {
    console.log("hey jim")
    $.ajax({
      url: $(this).attr("new_car_path"),
      type: 'GET',
      dataType: 'script' 
    })
  });

  $(document).on("click", '.sell_car, .reneg_car, .reserve_car',function() {  
    console.log("hi")
    var statePath = $(this).attr("state_path")
    // console.log(statePath)
    $.ajax({
      url: statePath,
      type: 'PUT',
      dataType: 'script' 
    })
  })
});