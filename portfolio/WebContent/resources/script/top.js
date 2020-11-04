$(window).scroll(function(){
    var height =$(window).scrollTop();
    if(height > 100){
        $("#Back2Top").fadeIn();
    }
    else{
        $("#Back2Top").fadeOut();
    }
});

$(document).ready(function(){
    $("#Back2Top").click(function(event){
        event.preventDefault();
        $("html,body").animate({scrollTop:0},"slow");
        return false;
    })
});