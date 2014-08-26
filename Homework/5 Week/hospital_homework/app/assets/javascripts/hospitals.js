
$(document).ready(function(){
  $('#hospital_name').keyup( function(){
    // console.log($(this).val().length <= 0)
    if( 
      $(this).val().length <= 0){
        // console.log("some text");
        $(".submit").attr("disabled", "disabled");
                                }
    else{
        // console.log("different text");
        $(".submit").removeAttr("disabled");
    }
  $('#hospital_description').keyup( function(){
    console.log($(this).val().length <= 0)
    if( 
      $(this).val().length <= 0){
        // console.log("description is fucked");
        $(".submit").attr("disabled", "disabled");
                                }
    else{
        // console.log("different description");
        $(".submit").removeAttr("disabled");
    }
  $('#hospital_capacity').keyup( function(){
    console.log($(this).val().length <= 0)
    if( 
      $(this).val().length <= 0){
        console.log("description is fucked");
        $(".submit").attr("disabled", "disabled");
                                }
    else{
        console.log("different description");
        $(".submit").removeAttr("disabled");
    } 

  }) 

  })
   

  })
  
})