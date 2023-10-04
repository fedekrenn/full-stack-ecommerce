class Compra:
	def __init__(self, nro_factura, fecha, cliente, productos, total):
		self.nro_factura = nro_factura
		self.fecha = fecha
		self.cliente = cliente
		self.productos = productos
		self.total = total
		self.cantidad_productos = len(productos)

	def get_nro_factura(self):
		return self.nro_factura

	def set_nro_factura(self, nro_factura):
		self.nro_factura = nro_factura
	
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

	def set_productos(self, producto):
		self.productos.append(producto)

	def get_total(self):
		return self.total

	def set_total(self, total):
		self.total = total