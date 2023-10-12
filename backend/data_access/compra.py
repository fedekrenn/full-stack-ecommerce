class CompraDao():
    def __init__(self, db):
        self.db = db
        self.cursor = db.cursor()

    def obtener_compra(self, id_compra):
        pass

    def obtener_todas_compras(self):
        pass

    def agregar_producto(self, id_compra, producto):
        pass

    def crear_compra(self, compra):
        pass

    def eliminar_producto(self, id_compra, id_producto):
        pass

    def cancelar_compra(self, id_compra):
        pass