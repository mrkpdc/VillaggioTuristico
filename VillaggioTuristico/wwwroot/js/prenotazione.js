// Inserimento prenotazione
function inserisciPrenotazione() {
    var body = {};

    body.Tipologia = $('#tipologiaCamera').val();
    $.ajax({
        method: "POST",
        url: "/api/Booking/InserisciPrenotazione",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (data, status) {
            console.log(body);
            console.log(data);
            console.log(status);
            this.always();
        },
        error: function (error, status) {
            console.log(body);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
};

//select box tipologia camere
function elencoCamere() {
        $.ajax({
            method: "GET",
            url: "/api/Camere",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data, status) {
                for (var i = 0; i < data.length; i++) {
                    $("#tipologiaCamera").append("<option value=" + data[i].tipologia + ">" + data[i].tipologia + "</option>")
                }
            },
            error: function (error, status) {
                console.log(error);
                console.log(status);
                this.always();
            },
            always: function () { }
        });
    }
    $(document).ready(function() {
    elencoCamere();
    });

