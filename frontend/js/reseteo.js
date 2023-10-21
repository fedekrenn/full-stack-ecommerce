const btn = document.getElementById('btnGoogleLogin')

function openGoogleLoginPopup() {
  // URL de autenticación de Google (reemplaza con la URL correcta)
  const googleAuthURL =
    'https://accounts.google.com/o/oauth2/auth?client_id=YOUR_CLIENT_ID&redirect_uri=YOUR_REDIRECT_URI&response_type=code&scope=openid%20email&access_type=offline'

  // Abre una nueva ventana o pop-up
  const popup = window.open(
    googleAuthURL,
    'GoogleLoginPopup',
    'width=600,height=600'
  )

  // Verifica si el pop-up se abre
  if (!popup || popup.closed || typeof popup.closed == 'undefined') {
    alert('Habilita las ventanas emergentes para iniciar sesión con Google.')
  }
}

btn.addEventListener('click', openGoogleLoginPopup)
