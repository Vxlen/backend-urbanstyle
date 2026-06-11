const API_URL = "http://localhost:8080/graphql";

document
    .getElementById("loginForm")
    .addEventListener("submit", login);

async function login(event) {

    event.preventDefault();

    const username =
        document.getElementById("username").value;

    const password =
        document.getElementById("password").value;

    const query = `
        mutation {

            login(userInput: {
                username: "${username}",
                password: "${password}"}
            )

        }
    `;

    const response = await fetch(API_URL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            query: query
        })
    });

    const data = await response.json();

    const mensaje =
        document.getElementById("mensaje");

    if(data.data.login){


            localStorage.setItem("usuario",username);

            localStorage.setItem("logueado","true");


        mensaje.textContent =
            "Inicio de sesión correcto";

        mensaje.className =
            "exito";

        setTimeout(() => {

            window.location.href =
                "index.html";

        }, 1000);

    } else {

        mensaje.textContent =
            "Usuario o contraseña incorrectos";

        mensaje.className =
            "error";
    }
}