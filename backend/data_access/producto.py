class ProductoDao():

    def __init__(self, db):
        self.db = db
        self.cursor = db.cursor()

    def obtener_producto_id(self, id_producto):
        pass

    def obtener_todos_produdctos(self):
        pass

    def crear_pruducto(self, producto):
        pass

    def editar_producto(self, id_producto, producto):
        pass

    def eliminar_producto(self, id_producto):
        pass