const pass1 = document.getElementById('pass1')
const pass2 = document.getElementById('pass2')
const form = document.getElementById('form')

function validarClaves() {
  if (pass1.value != '' && pass2.value != '') {
    if (pass1.value == pass2.value) {
      alert('El registro se ha realizado con éxito')
			window.location.href = "./login.html";
    } else {
      alert('Las contraseñas no coinciden')
    }
  }
}

form.addEventListener('submit', (e) => {
  e.preventDefault()
  validarClaves()
})
