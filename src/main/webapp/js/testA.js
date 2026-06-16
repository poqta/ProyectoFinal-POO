let tiempo = 10 * 60;
let enviado = false;

function actualizarTiempo() {
    let minutos = Math.floor(tiempo / 60);
    let segundos = tiempo % 60;

    document.getElementById("tiempo").innerHTML =
        minutos + ":" + (segundos < 10 ? "0" + segundos : segundos);

    if (tiempo <= 0 && !enviado) {
        enviado = true;
        document.getElementById("btnFinalizar").innerHTML = "Enviando...";
        document.getElementById("testForm").submit();
        return;
    }

    tiempo--;
}

actualizarTiempo();
setInterval(actualizarTiempo, 1000);