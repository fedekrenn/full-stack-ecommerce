class EntregaDao():
    def __init__(self, db):
        self.db = db
        self.cursor = db.cursor()

    def obtener_entrega(self, id_entrega):
        pass

    def obtener_todas_entregas(self):
        pass

    def crear_entrega(self, entrega):
        pass

    def eliminar_entrega(self, id_entrega):
        pass