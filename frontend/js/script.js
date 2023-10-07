const email = document.getElementById("email");
const password = document.getElementById("password");
const form = document.getElementById("form");
const nombre = document.getElementById("nombre");

function validarUsuario() {
  if (email.value != "" && password.value != "") {
    if (email.value == "ivana@gmail.com") {
      if (password.value == "123") {
        nombre.innerText = email.value;
      } else {
        alert("Contraseña incorrecta");
      }
    } else {
      alert("Correo electrónico incorrecto");
    }
  }
}
form.addEventListener("submit", (e) => {
  e.preventDefault();
  validarUsuario();
});
