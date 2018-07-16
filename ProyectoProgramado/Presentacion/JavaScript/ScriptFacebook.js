

var facebookUser = {};
function Facebook_correctLogin() {
    //	Obtener los datos del usuario
    FB.api('/me?fields=id,name,first_name,last_name,email', function (response) {

        facebookUser = response;

        
        window.location.href = "/ModuloCliente/PrincipalLineaPedido.aspx?nombre=" + facebookUser.first_name + "&correo=" + facebookUser.email + "&id=" + facebookUser.id;

        console.log('____________________');
        console.log('Bienvenido ' + facebookUser.name);
        console.log('Tus datos:');
        console.log(facebookUser.name);
        console.log(facebookUser.id);
        console.log(facebookUser.email);

    });


}





var statusChangeCallback = function (response) {
    console.log('____________________');
    console.log('statusChangeCallback');
    console.log(response);
    //	Login y autorización correctas
    if (response.status === 'connected') {
        Facebook_correctLogin();     
    }

};

function checkLoginState() {
    FB.getLoginStatus(function (response) {
        statusChangeCallback(response);
    });
}


