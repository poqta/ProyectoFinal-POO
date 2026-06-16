const numerosOriginales = [
    26, 27, 28, 29, 30,
    31, 32, 33, 34, 35,
    36, 37, 38, 39, 40,
    41, 42, 43, 44, 45,
    46, 47, 48, 49, 50,
    51, 52, 53, 54, 55
];

const form = document.getElementById("testForm");

function prepararEnvio() {
    document.querySelectorAll(".campo-generado").forEach(campo => campo.remove());

    for (let i = 0; i < numerosOriginales.length; i++) {
        const numeroVisual = i + 1;
        const numeroOriginal = numerosOriginales[i];
        const seleccionada = document.querySelector('input[name="q' + numeroVisual + '"]:checked');

        if (seleccionada) {
            crearCampoOculto("p" + numeroVisual, seleccionada.value);
            crearCampoOculto("p" + numeroOriginal, seleccionada.value);
        }
    }
}

function crearCampoOculto(nombre, valor) {
    const campo = document.createElement("input");
    campo.type = "hidden";
    campo.name = nombre;
    campo.value = valor;
    campo.className = "campo-generado";
    form.appendChild(campo);
}

form.addEventListener("submit", function () {
    prepararEnvio();
});

let tiempo = 12 * 60;
let enviado = false;

function actualizarTiempo() {
    let minutos = Math.floor(tiempo / 60);
    let segundos = tiempo % 60;

    document.getElementById("tiempo").innerHTML =
        minutos + ":" + (segundos < 10 ? "0" + segundos : segundos);

    if (tiempo <= 0 && !enviado) {
        enviado = true;
        document.getElementById("btnFinalizar").innerHTML = "Enviando...";
        prepararEnvio();
        form.submit();
        return;
    }

    tiempo--;
}

actualizarTiempo();
setInterval(actualizarTiempo, 1000);