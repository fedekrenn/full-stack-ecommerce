class Usuario:
	dni = ""
	nombre = ""
	apellido = ""
	email = ""
	domicilio = ""
	rol = ""
	telefono = ""
	clave = ""

	def __init__(self, dni, nombre, apellido, email, domicilio, rol, telefono, clave):
		self.dni = dni
		self.nombre = nombre
		self.apellido = apellido
		self.email = email
		self.domicilio = domicilio
		self.rol = rol
		self.telefono = telefono
		self.clave = clave

	def get_dni(self):
		return self.dni

	def set_dni(self, dni):
		self.dni = dni

	def get_nombre(self):
		return self.nombre

	def set_nombre(self, nombre):
		self.nombre = nombre

	def get_apellido(self):
		return self.apellido

	def set_apellido(self, apellido):
		self.apellido = apellido

	def get_email(self):
		return self.email

	def set_email(self, email):
		self.email = email

	def get_domicilio(self):
		return self.domicilio

	def set_domicilio(self, domicilio):
		self.domicilio = domicilio

	def get_rol(self):
		return self.rol

	def set_rol(self, rol):
		self.rol = rol

	def get_telefono(self):
		return self.telefono

	def set_telefono(self, telefono):
		self.telefono = telefono

	def get_clave(self):
		return self.clave

	def set_clave(self, clave):
		self.clave = clave