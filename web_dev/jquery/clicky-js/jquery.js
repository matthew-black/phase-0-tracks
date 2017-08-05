//------------------------------------------------------------//
//--These first two are just mess-around type tests that I am
//--leaving in as historical documents from the first time I
//--ever added JQuery to a page:
    //--will display this alert every time the page loads:
  // $(function(){
  //   alert("Just so you know, this page is purely nonsense!");
  // });

    //--would display alert when an <h1> is clicked:
  // $('h1').click(function(){
  //   alert("As a reminder, this page is purely nonsense!");
  // });
//------------------------------------------------------------//



//--What is actually applied to the DOM:
  $('header').animate({top: '8.5em'}, 400);
  $('body').css('backgroundColor', '#064479');
  $('table').css('visibility', 'hidden');


  $('header').click(function(){
    $('header').animate({top: '0px'}, 400);
    $('body').css('backgroundColor', '#1C90F3');
    $('table').css('visibility', 'visible');
  });



//--Switch these tests on and off (for self-edification):
    //--doing CSS things to tags, classes and IDs:
  // $('td').css('border', '20px solid purple');
  // $('td:first').css('border', '20px solid purple');
  // $('h1').css('border', '20px solid white');
  // $('#m').css('backgroundColor', 'white');
    //--can also set JavaScript variables (Thanks, DOM!):
  // var h1s = document.getElementsByTagName("h1");
  // var h1 = h1s[0];
  // $(h1).css('border','5px solid black');

    //--animating stuff on load:
  // $('h1').hide(5000).delay(500).show(5000);
  // $('h1').fadeOut(700).delay(1400).fadeIn(700);
  // $('h1').animate({height: '250px'}, 1000);
    //--for these, will need to turn on test properties in
    //--css (p and h1) and html (<p> toward the bottom):
  // $('p').animate({bottom: '50px', left: '75px'}, 500);
  // $('h1').animate({top: '50px', right: '75px'}, 500);

    //--doing stuff on a click:
  // $('header').css('border', '5px solid #064479')
  // $('header').click(function(){
  //   $('header').css('border','none');
  // });


// $(function(){
//   // code
// });