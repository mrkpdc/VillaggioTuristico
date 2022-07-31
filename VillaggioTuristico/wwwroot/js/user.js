// Stampa prenotazioni user, gestita l'eventualità di più click sul bottone
$('#prenotazioniUser').one('click', function () {
    $.ajax({
        method: "GET",
        url: "/api/Booking/ListaPrenotazioni",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data, status) {
            data.forEach(element => {
                document.querySelector('#resultDivUserPage').innerHTML += `
                    <tr>
                        <td>${element.id}</td>
                        <td>${element.tipologia}</td>
                    </tr>
                `
            });
        },
        error: function (error, status) {
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
});