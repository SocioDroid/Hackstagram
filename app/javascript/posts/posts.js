$(function(){
    $("#post-comment").click(function(){
        $("#comment_comment").focus();  
    });

    $(".post-like").click(function(){
        var post_id = $(this).data("id");

        $.ajax({
            url: "/post/like/"+post_id,
            method: "GET"
        }).done(function(response){
            console.log(response);
        })
    });
    
    $(".post-like").click(function(){
        var post_id = $(this).data("id");

        $.ajax({
            url: "/post/like/"+post_id,
            method: "GET"
        }).done(function(response){
            console.log(response);
        })
    });
    
});
