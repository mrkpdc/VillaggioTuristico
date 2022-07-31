function ajaxCallCreateUser(url) {
    var data = {};
    data.userName = document.querySelector("#InputUserName").value;
    data.email = document.querySelector("#InputEmail").value;
    data.password = document.querySelector("#InputPassword").value;
    data.confirmPassword = document.querySelector("#InputConfirmPassword").value;
    $.ajax({
        method: "POST",
        url: url,
        // contentType: "application/json; charset=utf-8",
        data: data,
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                        <strong>Benvenuto al Wild Village!</strong>
                        <p>Sei stato registrato con successo.</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            `;
            }
            else {
                document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Registrazione fallita :(</strong>
                        <p>${response}</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            `;

            }
            this.always();
        },
        error: function (error, status) {
            console.log(data);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () { }
    });
};
