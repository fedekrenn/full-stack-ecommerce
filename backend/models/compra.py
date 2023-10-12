from datetime import datetime


class Compra:
    def __init__(self, nro_factura, nro_cuenta, email, productos, total, modo_pago):
        self.nro_factura = nro_factura
        self.fecha = datetime.now()
        self.nro_cuenta = nro_cuenta
        self.email = email
        self.productos = productos
        self.cantidad_productos = len(productos)
        self.total = total
        self.modo_pago = modo_pago

    def get_nro_factura(self):
        return self.nro_factura

    def set_nro_factura(self, nro_factura):
        self.nro_factura = nro_factura

    def get_fecha(self):
        return self.fecha

    def set_fecha(self, fecha):
        self.fecha = fecha

    def get_nro_cuenta(self):
        return self.nro_cuenta

    def set_nro_cuenta(self, nro_cuenta):
        self.nro_cuenta = nro_cuenta

    def get_email(self):
        return self.email

    def set_email(self, email):
        self.email = email

    def get_productos(self):
        return self.productos

    def set_productos(self, producto):
        self.productos.append(producto)

    def get_cantidad_productos(self):
        return self.cantidad_productos

    def set_cantidad_productos(self, cantidad_productos):
        self.cantidad_productos = cantidad_productos

    def get_total(self):
        return self.total

    def set_total(self, total):
        self.total = total

    def get_modo_pago(self):
        return self.modo_pago

    def set_modo_pago(self, modo_pago):
        self.modo_pago = modo_pago
