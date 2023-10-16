class UsuarioDao():
    def __init__(self, db):
        self.db = db
        self.cursor = db.cursor()

    def obtener_usuario_email(self, email):
        pass

    def obtener_todos_usuarios(self):
        pass

    def crear_usuario(self, usuario):
        pass

    def editar_usuario(self, email, usuario):
        pass

    def eliminar_usuario(self, email):
        pass

