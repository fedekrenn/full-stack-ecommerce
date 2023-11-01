const form = document.getElementById('form')
const nombre = document.getElementById('nombre')
const apellido = document.getElementById('apellido')
const dni = document.getElementById('dni')
const telefono = document.getElementById('tel')
const pass1 = document.getElementById('pass1')
const pass2 = document.getElementById('pass2')
// Divs con las leyesdas
const formLegend = document.getElementById('form-legend')
const nombreLegend = document.getElementById('nombre-legend')
const apellidoLegend = document.getElementById('apellido-legend')
const dniLegend = document.getElementById('dni-legend')
const telefonoLegend = document.getElementById('tel-legend')
const pass1Legend = document.getElementById('pass1-legend')
const pass2Legend = document.getElementById('pass2-legend')

nombre.addEventListener('keyup', () => {
    if (nombre.value.length < 3) {
        nombreLegend.innerText = 'El nombre debe tener al menos 3 caracteres'
        nombreLegend.style.color = 'red'
    } else {
        nombre.style.border = '2px solid green'
        nombreLegend.innerText = ''
    }
})

apellido.addEventListener('keyup', () => {
    if (apellido.value.length < 3) {
        apellidoLegend.innerText = 'El apellido debe tener al menos 3 caracteres'
        apellidoLegend.style.color = 'red'
    } else {
        apellido.style.border = '2px solid green'
        apellidoLegend.innerText = ''
    }
})

dni.addEventListener('keyup', () => {
    if (dni.value.length < 7 || dni.value.length > 8) {
        dniLegend.innerText = 'El DNI debe tener 7 u 8 caracteres'
        dniLegend.style.color = 'red'
    } else {
        dni.style.border = '2px solid green'
        dniLegend.innerText = ''
    }
})

telefono.addEventListener('keyup', () => {
    if (telefono.value.length !== 10) {
        telefonoLegend.innerText = 'El teléfono debe tener 10 números'
        telefonoLegend.style.color = 'red'
    } else {
        telefono.style.border = '2px solid green'
        telefonoLegend.innerText = ''
    }
})

pass1.addEventListener('keyup', () => {
    if (pass1.value.length < 6) {
        pass1Legend.innerText = 'La contraseña debe tener al menos 6 caracteres'
        pass1Legend.style.color = 'red'
    } else {
        pass1.style.border = '2px solid green'
        pass1Legend.innerText = ''
    }
})

pass2.addEventListener('keyup', () => {
    if (pass2.value !== pass1.value) {
        pass2Legend.innerText = 'Las contraseñas no coinciden'
        pass2Legend.style.color = 'red'
    } else {
        pass2.style.border = '2px solid green'
        pass2Legend.innerText = ''
    }
})

form.addEventListener('submit', (e) => {
    e.preventDefault()
    if (pass1.value == pass2.value) {
        alert('El registro se ha realizado con éxito')
        window.location.href = './login.html'
    } else {
        alert('Las contraseñas no coinciden')
    }
})
