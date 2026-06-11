const API_URL = "http://localhost:8080/graphql";

document
    .getElementById("registroForm")
    .addEventListener("submit", registrarUsuario);

async function registrarUsuario(event) {

    event.preventDefault();

    const username =
        document.getElementById("username").value;

    const password =
        document.getElementById("password").value;

    const query = `
        mutation {
            createUser(userInput: {
                username: "${username}",
                password: "${password}"}){
                id
                username}}`;

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

    
    const mensaje = document.getElementById("mensaje");

        mensaje.textContent = "Usuario registrado correctamente";

        mensaje.className = "exito";




    document
        .getElementById("registroForm")
        .reset();

    setTimeout(() => {window.location.href = "index.html";}, 2000);
}