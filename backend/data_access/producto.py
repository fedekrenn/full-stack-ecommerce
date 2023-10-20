from logging import exception
from models.producto import *


class ProductoDao:
    def __init__(self, db):
        self.db = db
        self.cursor = db.cursor()

    def obtener_producto_id(self, id_producto):
        try:
            self.cursor.execute(
                f"SELECT id_producto, modelo, precio, stock, imagen, detalle, tipo_marca.descripcion AS marca, tipo_estilo.descripcion AS estilo, tipo_material.descripcion AS material, tipo_color.descripcion AS color FROM producto JOIN tipo_marca ON producto.id_marca = tipo_marca.id_marca JOIN tipo_estilo ON producto.id_estilo = tipo_estilo.id_estilo JOIN tipo_material ON producto.id_material = tipo_material.id_material JOIN tipo_color ON producto.id_color = tipo_color.id_color WHERE id_producto = {id_producto}"
            )
            result = self.cursor.fetchall()
            if len(result) == 0:
                return "No se encontró el producto"
            else:
                return result
        except Exception as Error:
            print(f"Ocurrió un error: {Error}")

    def obtener_todos_productos(self):
        try:
            self.cursor.execute(
                f"SELECT id_producto, modelo, precio, stock, imagen, detalle, tipo_marca.descripcion AS marca, tipo_estilo.descripcion AS estilo, tipo_material.descripcion AS material, tipo_color.descripcion AS color FROM producto JOIN tipo_marca ON producto.id_marca = tipo_marca.id_marca JOIN tipo_estilo ON producto.id_estilo = tipo_estilo.id_estilo JOIN tipo_material ON producto.id_material = tipo_material.id_material JOIN tipo_color ON producto.id_color = tipo_color.id_color"
            )
            result = self.cursor.fetchall()
            if len(result) == 0:
                return "No hay productos cargados"
            else:
                return result
        except Exception as Error:
            print(f"Ocurrió un error: {Error}")

    def crear_producto(self, producto):
        try:
            if not isinstance(producto, Producto):
                raise exception("El producto no es de tipo Producto")
            else:
                sql = "INSERT INTO producto (modelo, precio, stock, detalle, id_marca, id_estilo, id_material, id_color) VALUES (%s ,%s ,%s ,%s ,%s ,%s ,%s, %s)"
                values = (
                    producto.modelo,
                    producto.precio,
                    producto.stock,
                    producto.detalle,
                    producto.marca,
                    producto.estilo,
                    producto.material,
                    producto.color,
                )
                self.cursor.execute(sql, values)
                self.db.commit()
                return "Producto agregado correctamente"
        except Exception as Error:
            print(f"Ocurrió un error: {Error}")

    def editar_producto(self, id_producto, producto):
        try:
            if not isinstance(producto, Producto):
                raise exception("El producto no es de tipo Producto")
            else:
                sql = f"UPDATE producto set modelo = %s, precio = %s, stock = %s, detalle = %s, id_marca = %s, id_estilo = %s, id_material = %s, id_color = %s WHERE id_producto = {id_producto}"
                values = (
                    producto.modelo,
                    producto.precio,
                    producto.stock,
                    producto.detalle,
                    producto.marca,
                    producto.estilo,
                    producto.material,
                    producto.color,
                )
                self.cursor.execute(sql, values)
                self.db.commit()
                return "Producto modificado correctamente"
        except Exception as Error:
            print(f"Ocurrió un error: {Error}")

    def eliminar_producto(self, id_producto):
        try:
            self.cursor.execute(
                f"DELETE FROM producto WHERE id_producto = {id_producto}"
            )
            self.db.commit()
            return "Producto eliminado correctamente"
        except Exception as Error:
            print(f"Ocurrió un error: {Error}")
