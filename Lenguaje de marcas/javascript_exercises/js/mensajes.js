function mostrarMensajes() {
    alert("¡Botón pulsado!");
    console.log("Este es un mensaje de log");
    console.info("Este es un mensaje de información");
    console.error("Este es un mensaje de error");

    document.getElementById("mensaje").innerHTML = "<b><i>botón pulsado</i></b>";

    const imagen = document.createElement("img");
    imagen.src = "ruta/de/imagen.jpg";
    imagen.alt = "Imagen añadida";
    imagen.width = 100;

    const contenedor = document.getElementById("imagenContenedor");
    contenedor.innerHTML = "";
    contenedor.appendChild(imagen);
}

function cambiarImagen() {
    const contenedor = document.getElementById("imagenContenedor");
    const imagen = contenedor.querySelector("img");

    if (imagen) {
        imagen.src = "ruta/de/imagen2.jpg";
        imagen.alt = "Imagen cambiada";
    }
}
