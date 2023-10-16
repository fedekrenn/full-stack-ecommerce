const pass1 = document.getElementById("pass1");
const pass2 = document.getElementById("pass2");

function validarClaves() {
	if (pass1.value != "" && pass2.value != "") {
		if (pass1.value == pass1.value) {
			//Hacer algo
		}else{
				alert("Las contraseñas no coinciden");
		}
	}
}

form.addEventListener("submit", (e) => {
	e.preventDefault();
	validarClaves();
});
