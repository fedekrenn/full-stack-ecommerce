function ValidarUsuario(){
    if (document.getElementById("email").value != '' && document.getElementById("password").value != ''){
        if (document.getElementById("email").value == 'ivana@gmail.com') {
            if (document.getElementById("password").value == '123'){   
                alert('Bienvenida Ivana')            
               }
            else {alert("Contraseña incorrecta")}   
            }
        else {
            alert("Corrreo electrónico incorrecto")
            }
    }
}