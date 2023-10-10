class Producto:
    def __init__(self, modelo, precio, stock, imagen, detalle, marca, rodado, estilo, material, color):
        self.modelo = modelo
        self.precio = precio
        self.stock = stock
        self.imagen = imagen
        self.detalle = detalle
        self.marca = marca
        self.rodado = rodado
        self.estilo = estilo
        self.material = material
        self.color = color

    def get_modelo(self):
        return self.modelo

    def set_modelo(self, modelo):
        self.modelo = modelo

    def get_precio(self):
        return self.precio

    def set_precio(self, precio):
        self.precio = precio

    def get_stock(self):
        return self.stock

    def set_stock(self, stock):
        self.stock = stock

    def get_imagen(self):
        return self.imagen

    def set_imagen(self, imagen):
        self.imagen = imagen

    def get_detalle(self):
        return self.detalle

    def set_detalle(self, detalle):
        self.detalle = detalle

    def get_marca(self):
        return self.marca

    def set_marca(self, marca):
        self.marca = marca

    def get_rodado(self):
        return self.rodado

    def set_rodado(self, rodado):
        self.rodado = rodado

    def get_estilo(self):
        return self.estilo

    def set_estilo(self, estilo):
        self.estilo = estilo

    def get_material(self):
        return self.material

    def set_material(self, material):
        self.material = material

    def get_color(self):
        return self.color

    def set_color(self, color):
        self.color = color
