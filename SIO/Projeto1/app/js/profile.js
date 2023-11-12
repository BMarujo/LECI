window.onload = () => {
    show_username();
    show_avatar();
    $.get("/users/userid",{"token":getCookie("token")})
    .done(function(response){
        result = JSON.parse(response);
        console.log(result["id"]);
        $("#PROFILE").attr("href", "/profile?id=" + result["id"]);
    });
    
    
};

function show_avatar() {
    const userId = new URLSearchParams(window.location.search).get('id');
    $.get("/profile/show_avatar",{"token":getCookie("token"),"userId":userId})
    .done(function(avatar){
        console.log(avatar);
        let avatarContainer = document.getElementById("MANAGE-AVATAR")

        let avatarImage = document.getElementById("avatar-image");
        avatarImage.src = avatar.replaceAll('"', "");
    })
    .fail(function(){
        console.log("Failed to get image");
    });
    
}

function uploadAvatar() {
    const userId = new URLSearchParams(window.location.search).get('id');

    const avatarInput = document.getElementById("avatar-input");
    const avatarFile = avatarInput.files[0]; // Get the selected file
    console.log("id: "+userId);
    if (avatarFile) {
        const formData = new FormData();
        formData.append("newAvatar", avatarFile);
        formData.append("userId", userId);
        $.ajax({
            url: "/profile/upload_avatar",
            type: "POST",
            headers: {"X-Filename": avatarFile.name},
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                // Handle the response from the server
                result = JSON.parse(response)
                console.log(result["success"]);
                if (result["success"] == "uploaded avatar") {
                    alert("Avatar upload successful.");
                    location.reload();
                } else {
                    alert("Avatar upload failed.");
                }
            },
            error: function () {
                // Handle errors, if any
                console.log("Error uploading.");
            },
        });
    }
}

/*
function updateAvatarImage(newAvatarPath) {
    const avatarImage = document.getElementById("avatar-image");
    console.log(newAvatarPath);
    avatarImage.src= newAvatarPath; // Set the source of the image to the new path
}
function displayImage(input){
    const avatarImage = document.getElementById("avatar-image");

    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            avatarImage.src = e.target.result;
        };

        reader.readAsDataURL(input.files[0]);
    }
}*/

function show_username() {
    const userId = new URLSearchParams(window.location.search).get('id');

    $.get("/profile/show_username",{"token":getCookie("token"),"userId":userId})
    .done(function(username){
        console.log(username);
        let usernameContainer = document.getElementById("USERNAME");
        usernameContainer.value = username.replaceAll('"', "");
    })
    .fail(function(){
        console.log("Failed to get username");
    });
}

function change_username() {
    const userId = new URLSearchParams(window.location.search).get('id');

    newusername = document.getElementById("USERNAME").value;
    console.log(newusername);
    $.get("/profile/change_username",{"token":getCookie("token"),"newUsername":newusername,"userId":userId})
    .done(function(success){
        console.log(success);
        alert("Username changed!"); 
        show_username();
    })
    .fail(function(){
        alert("Failed to change username!")
    });
    
}

function change_password() {
    const userId = new URLSearchParams(window.location.search).get('id');
    
    let NEW_PASSWORD = document.getElementById("NEW_PASSWORD").value;
    let CONFIRM_PASSWORD = document.getElementById("CONFIRM_PASSWORD").value;
    if (NEW_PASSWORD != CONFIRM_PASSWORD){
        alert("Passwords do not match!");
        return;
    }
    $.get("/profile/change_password",{"token":getCookie("token"),"newPassword":NEW_PASSWORD,"userId":userId})
    .done(function(success){
        //console.log(success);
        alert("Password changed!");
    })
    .fail(function(){
        console.log("Failed to change password");
    });
}
