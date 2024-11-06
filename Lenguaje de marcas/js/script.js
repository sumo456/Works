// 1. Sintaxi bàsica: Mostra un missatge a la consola
console.log("Hola, aquest és un exemple de sintaxi bàsica en JavaScript");

// 2. Selecció i accés a elements
const titol = document.getElementById("paragraf");
titol.style.color = "blue";

// Selecciona el primer paràgraf i modifica el seu contingut
const primerParagraf = document.querySelector("p");
primerParagraf.textContent = "Aquest és el primer paràgraf modificat.";

// 3. Creació i modificació d'elements
const nouElement = document.createElement("div");
nouElement.textContent = "Aquest és un nou div afegit amb JavaScript";
document.body.appendChild(nouElement);

// 4. Eliminació d'elements després de 5 segons
setTimeout(() => {
    const elementAEliminar = document.getElementById("paragraf");
    if (elementAEliminar) elementAEliminar.remove();
}, 5000);

// 5. Modificació d'estils
const estilElement = document.createElement("p");
estilElement.textContent = "Aquest paràgraf té estils aplicats per JavaScript";
estilElement.style.color = "red";
estilElement.style.fontSize = "20px";
document.body.appendChild(estilElement);
