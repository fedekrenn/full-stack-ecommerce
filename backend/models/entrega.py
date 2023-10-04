class Entrega:
	def __init__(self, compra, domicilio, fecha, telefono_contacto, receptor):
		self.compra = compra
		self.domicilio = domicilio
		self.fecha = fecha
		self.telefono_contacto = telefono_contacto
		self.receptor = receptor
		self.estado = 1 #1:'En preparación', 2: 'Despachado', 3:'Entregado'

	def get_compra(self):
		return self.compra

	def set_compra(self, compra):
		self.compra = compra

	def get_domicilio(self):
		return self.domicilio
	
	def set_domicilio(self, domicilio):
		self.domicilio = domicilio

	def get_fecha(self):
		return self.fecha

	def set_fecha(self, fecha):
		self.fecha = fecha

	def get_telefono_contacto(self):
		return self.telefono_contacto

	def set_telefono_contacto(self, telefono_contacto):
		self.telefono_contacto = telefono_contacto

	def get_receptor(self):
		return self.receptor

	def set_receptor(self, receptor):
		self.receptor = receptor

	def get_estado(self):
		return self.estado

	def set_estado(self, estado):
		self.estado = estado
