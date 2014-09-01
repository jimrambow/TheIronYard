$(document).ready(function() {
  // $('li.feature').hover(function() {
  //   $('li.feature').removeClass('highlight');
  //   $(this).addClass('highlight');
  // })
  $(".spin_the_wheel").click(function() {
    var currentFeature = $('li.feature:first');
    var randomNumber = Math.floor(Math.random()*$('li.feature').length);
    var randomFeature = $(".feature_" + randomNumber);
    console.log(randomFeature);
    var currentLoop = 0;
    var loopNumber = Math.floor(Math.random()*3) + 2;
    var loopSpeed = 50;
    
    function newInterval() {
      setTimeout(function(){
        $("<audio></audio>").attr({
          'src':'/assets/tick_sound.mp3',
          'volume':0,
          'autoplay':'autoplay',
          'class':'tick_sound'
        }).appendTo("body");

        loopSpeed += 3;
        if(!(currentLoop >= loopNumber) || !(currentFeature.is(randomFeature))){
          console.log("hi")
          newInterval();
          // clearInterval(newInterval);
        }

        $('li.feature').removeClass('highlight');
        currentFeature.addClass('highlight');
        if(  currentFeature.is($('li.feature:last'))  ){
          console.log("Increasing loop")
          currentLoop += 1
          currentFeature = $('li.feature:first');      
        }
        else {
          currentFeature = currentFeature.next();
        }
      }, loopSpeed)
    }
    newInterval()
  });
    // $(".tick_sound").remove();
    // $("body").append("<embed src='/assets/tick_sound.mp3' class='tick_sound hidden' autoplay=true>")
    // $("<audio></audio>").attr({
    //   'src':'/assets/tick_sound.mp3',
    //   'volume':0,
    //   'autoplay':'autoplay',
    //   'class':'tick_sound'
    // }).appendTo("body");
    // currentFeature === !!$('li.feature:last') 
    // Why doesn't this work?
});