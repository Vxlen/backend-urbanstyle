const API_URL ="http://localhost:8080/graphql";

document.getElementById("productForm").addEventListener("submit",crearProducto);

async function crearProducto(event){

    event.preventDefault();

    const nombre = document.getElementById("nombre").value;
    const descripcion = document.getElementById("descripcion").value;
    const precio = document.getElementById("precio").value;
    const categoria = document.getElementById("categoria").value;
    const stock = document.getElementById("stock").value;

    const query = `
        mutation {
            createProduct(productInput: {
                    nombre: "${nombre}",
                    descripcion:"${descripcion}",
                    precio: ${precio},
                    stock: ${stock},
                    categoriaID:"${categoria}"}){id}}`;

    const response =
        await fetch(API_URL, {

            method: "POST",

            headers: {
                "Content-Type":
                    "application/json"
            },

            body: JSON.stringify({
                query
            })

        });

        console.log(response)

    document.getElementById("mensaje").textContent ="Producto creado";

    document.getElementById("productForm").reset();
}