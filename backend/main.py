from config.config import *
from data_access.producto import *

dao = ProductoDao(dbdata)

print(dao.obtener_todos_productos())

producto_prueba = Producto('Bicicleta de prueba', 15000, 10, 'bicicleta_prueba.jpg', 'Bicicleta de prueba', 1, 1, 1, 1, 1)

# print(dao.crear_producto(producto_prueba))

# El de abajo debería fallar porque no es una instancia de Producto

producto_error = {
    'modelo': 'Bicicleta de prueba',
    'precio': 15000,
    'stock': 10,
    'imagen': 'bicicleta_prueba.jpg',
    'detalle': 'Bicicleta de prueba',
    'marca': 1,
    'rodado': 1,
    'estilo': 1,
    'material': 1,
    'color': 1
}
print(dao.crear_producto(producto_error))