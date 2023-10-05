class Usuario:
	def __init__(self, email, nombre, apellido, domicilio, telefono, clave):
		self.email = email
		self.nombre = nombre
		self.apellido = apellido
		self.domicilio = domicilio
		self.telefono = telefono
		self.__clave = clave
		self.rol = 2 #1: admin, 2: cliente
		
	def get_email(self):
		return self.email

	def set_email(self, email):
		self.email = email

	def get_nombre(self):
		return self.nombre

	def set_nombre(self, nombre):
		self.nombre = nombre

	def get_apellido(self):
		return self.apellido

	def set_apellido(self, apellido):
		self.apellido = apellido

	def get_domicilio(self):
		return self.domicilio

	def set_domicilio(self, domicilio):
		self.domicilio = domicilio

	def get_telefono(self):
		return self.telefono

	def set_telefono(self, telefono):
		self.telefono = telefono

	def get_clave(self):
		return self.__clave

	def set_clave(self, nueva_clave):
		self.__clave = nueva_clave

	def get_rol(self):
		return self.rol

	def set_rol(self, rol):
		self.rol = rol