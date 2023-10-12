from config.config import *
from data_access.producto import *

dao = ProductoDao(dbdata)

print(dao.obtener_todos_productos())

producto_prueba = Producto('Bicicleta de prueba', 15000, 10, 'Zapatilla Nike Air Max 90', 1, 1, 1, 1)

print(dao.crear_producto(producto_prueba))

# El de abajo debería fallar porque no es una instancia de Producto
print(dao.crear_producto('Este debería fallar', 15000, 10, 'Zapatilla Nike Air Max 90', 1, 1, 1, 1))