const API_URL = "http://localhost:8080/graphql";

let categoriaSeleccionada = 0;

function seleccionarCategoria(idCategoria) { categoriaSeleccionada = idCategoria; cargarProductos();}



async function obtenerProductos() {

    const query = `
        query {
            findAllProducts {
                id,
                nombre,
                descripcion,
                precio,
                categoria{
                id}
                
            }
        }
    `;

    const response = await fetch(API_URL, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({query: query})
    });

    const data = await response.json();

    return data.data.findAllProducts;}



// -------------------------------------


async function cargarProductos() {

    
    let productos = await obtenerProductos();

      if(categoriaSeleccionada != 0){

        productos = productos.filter(
            p => p.categoria.id == categoriaSeleccionada);}
    
    const contenedor = document.getElementById("productos");

    contenedor.innerHTML = "";


    const filtrados = productos.filter(p => p.categoria.id == categoriaSeleccionada);

    productos.forEach(producto => {
        contenedor.innerHTML += `
            <div class="card">

                <img src="./images/image-${producto.id}.jpg"
                     onerror="this.src='./images/default.png'"
                     alt="${producto.nombre}">

                <div class="card-body">

                    <h3>${producto.nombre}</h3>

                    <p>
                        ${producto.descripcion}
                    </p>

                    <p class="precio">
                        $${producto.precio}
                    </p>

                    <button onclick="agregarAlCarrito(${producto.id})">
                        Agregar al carrito
                    </button>

                    ${esAdmin ? `<button onclick="eliminarProducto(${producto.id})">Eliminar</button>`:""}

                </div>

            </div>
        `;
    });
}

cargarProductos();




const usuario = localStorage.getItem("usuario");
if(usuario){
    console.log("Usuario logueado:",usuario);
    document.getElementById("btnLogout").style.display = "block";
    document.getElementById("btnLogin").style.display = "none";
    document.getElementById("btnRegister").style.display = "none";
    document.getElementById("saludo").textContent =` 👤 ${usuario}`;}


function logout(){

    localStorage.removeItem("usuario");
    localStorage.removeItem("logueado");

    window.location.reload();}

const esAdmin = localStorage.getItem("usuario") === "admin";


async function eliminarProducto(id) {

    const confirmar = confirm("¿Seguro que querés eliminar este producto?");
    if (!confirmar) {return;}

    const query = `
        mutation {
            deleteProductByID(
                productID: "${id}")}`;

    const response =
        await fetch(API_URL, {

            method: "POST",
            headers: {
                "Content-Type":
                    "application/json"
            },

            body: JSON.stringify({
                query
            })});

    const data = await response.json();

    cargarProductos();}

if(localStorage.getItem("usuario") !== "admin"){document.getElementById("btnNuevoProducto").style.display ="none";}
if(esAdmin){document.getElementById("carrito").style.display = "none";}