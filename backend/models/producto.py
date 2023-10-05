class Producto:
	def __init__(self, stock, marca, rodado, precio, color, estilo, material):
		self.stock = stock
		self.marca = marca
		self.rodado = rodado
		self.precio = precio
		self.color = color
		self.estilo = estilo
		self.material = material

	def get_stock(self):
		return self.stock

	def set_stock(self, stock):
		self.stock = stock

	def get_marca(self):
		return self.marca

	def set_marca(self, marca):
		self.marca = marca

	def get_rodado(self):
		return self.rodado

	def set_rodado(self, rodado):
		self.rodado = rodado

	def get_precio(self):
		return self.precio

	def set_precio(self, precio):
		self.precio = precio

	def get_color(self):
		return self.color

	def set_color(self, color):
		self.color = color

	def get_estilo(self):
		return self.estilo

	def set_estilo(self, estilo):
		self.estilo = estilo

	def get_material(self):
		return self.material

	def set_material(self, material):
		self.material = material	