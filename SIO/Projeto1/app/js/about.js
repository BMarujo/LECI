window.onload = () => {
    $.get("/users/userid",{"token":getCookie("token")})
    .done(function(response){
        result = JSON.parse(response);
        console.log(result["id"]);
        $("#PROFILE").attr("href", "/profile?id=" + result["id"]);
    });
    

};