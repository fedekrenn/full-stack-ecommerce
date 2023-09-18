class Producto:
	n_producto = 0
	marca = ""
	rodado = ""
	precio = ""
	color = ""
	estilo = ""
	material = ""

	def __init__(self, n_producto, marca, rodado, precio, color, estilo, material):
		self.n_producto = n_producto
		self.marca = marca
		self.rodado = rodado
		self.precio = precio
		self.color = color
		self.estilo = estilo
		self.material = material

	def get_n_producto(self):
		return self.n_producto

	def set_n_producto(self, n_producto):
		self.n_producto = n_producto

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