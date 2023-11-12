window.onload = () => {
    const usernameInput = document.getElementById("username");
    const passwordInput = document.getElementById("password");

    usernameInput.addEventListener("keyup", (event) => {
        if (event.key === "Enter") {
            tryRegister();
        }
    });

    passwordInput.addEventListener("keyup", (event) => {
        if (event.key === "Enter") {
            tryRegister();
        }
    });
};

function tryRegister() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let errorBox = document.getElementById("errorBox");

    if (username === "" || password === "") {
        errorBox.innerHTML = "Por favor preencha todos os campos!";
    } else {
        $.post("users/register", { username: username, password: password })
        .done(function( data ) {
            const info = JSON.parse(data)

            if (info.username === "") {
                errorBox.innerHTML = "Utilizador já registado!";
            } else {
                setCookie("token", info.token);
                window.location.pathname = '/collections'; // change page
            }
        })
        .fail(function() {
            errorBox.innerHTML = "Ocurreu um erro ao tentar contactar o servidor!";
        });
    }
}
