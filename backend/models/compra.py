class Compra:
	n_compra = 0
	fecha = ""
	cliente = ""
	productos = []
	total = ""

	def __init__(self, n_compra, fecha, cliente, productos, total):
		self.n_compra = n_compra
		self.fecha = fecha
		self.cliente = cliente
		self.productos = productos
		self.total = total

	def get_n_compra(self):
		return self.n_compra

	def set_n_compra(self, n_compra):
		self.n_compra = n_compra
	
	def get_fecha(self):
		return self.fecha

	def set_fecha(self, fecha):
		self.fecha = fecha

	def get_cliente(self):
		return self.cliente

	def set_cliente(self, cliente):
		self.cliente = cliente

	def get_productos(self):
		return self.productos

	def set_productos(self, productos):
		self.productos = productos

	def get_total(self):
		return self.total

	def set_total(self, total):
		self.total = total