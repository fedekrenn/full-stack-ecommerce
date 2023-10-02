class Entrega:
	n_entrega = 0
	n_compra = 0
	domicilio = ""
	fecha_prevista = ""
	fecha = ""
	contacto = ""
	receptor = ""
	estado = ""

	def __init__(self, n_entrega, n_compra, domicilio, 
				fecha_prevista, fecha, contacto, receptor, estado):
		self.n_entrega = n_entrega
		self.n_compra = n_compra
		self.domicilio = domicilio
		self.fecha_prevista = fecha_prevista
		self.fecha = fecha
		self.contacto = contacto
		self.receptor = receptor
		self.estado = estado


	def get_n_entrega(self):
		return self.n_entrega

	def set_n_entrega(self, n_entrega):
		self.n_entrega = n_entrega

	def get_n_compra(self):
		return self.n_compra

	def set_n_compra(self, n_compra):
		self.n_compra = n_compra

	def get_domicilio(self):
		return self.domicilio

	def set_domicilio(self, domicilio):
		self.domicilio = domicilio

	def get_fecha_prevista(self):
		return self.fecha_prevista

	def set_fecha_prevista(self, fecha_prevista):
		self.fecha_prevista = fecha_prevista

	def get_fecha(self):
		return self.fecha

	def set_fecha(self, fecha):
		self.fecha = fecha

	def get_contacto(self):
		return self.contacto

	def set_contacto(self, contacto):
		self.contacto = contacto

	def get_receptor(self):
		return self.receptor

	def set_receptor(self, receptor):
		self.receptor = receptor

	def get_estado(self):
		return self.estado

	def set_estado(self, estado):
		self.estado = estado