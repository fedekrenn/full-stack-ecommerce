const email = document.getElementById("email");
const password = document.getElementById("password");
const form = document.getElementById("form");
const nombre = document.getElementById("nombre");
var contador = 0;

const usuarioAdmin = "admin@admin.com"
const passAdmin = 'admin'

function validarUsuario() {
  if (email.value != "" && password.value != "") {
    contador = contador + 1;
    if (contador < 3) {
      if (email.value == usuarioAdmin) {
        if (password.value == passAdmin) {
          alert ("Bienvenido "  + email.value)
          window.location.href = "../index.html";
        } else {
          alert("Contraseña incorrecta");
        }
      } else {
        alert("Correo electrónico incorrecto");
      }
    } else {
      alert("Usuario bloqueado");
    }
  }
}
form.addEventListener("submit", (e) => {
  e.preventDefault();
  validarUsuario();
});
