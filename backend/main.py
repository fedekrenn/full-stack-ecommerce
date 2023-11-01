from config.config import *
from data_access.producto import *
from models.producto import *

productos_db = ProductoDao(dbdata)

while True:
    print("******************")
    print("1. Consultar todos los productos")
    print("2. Consultar productos por id")
    print("3. Crear producto")
    print("4. Modificar producto")
    print("5. Eliminar producto")
    print("6. Salir")
    print("******************")
    opcion_elegida = input("Elige una opción:\n")

    if opcion_elegida == "1":
        for producto in productos_db.obtener_todos_productos():
            print("-------")
            print(producto)
            print("-------")
    elif opcion_elegida == "2":
        id = int(input("Ingrese el número de ID:\n"))
        print(productos_db.obtener_producto_id(id))
    elif opcion_elegida == "3":
        modelo = input("Ingrese el nombre del modelo:\n")
        precio = int(input("Ingrese el precio:\n"))
        stock = int(input("Ingrese la cantidad en stock:\n"))
        imagen = input("Ingrese URL imagen:\n")
        detalle = input("Redacte la descripción del producto:\n")
        marca = int(
            input(
                "Ingrese el número de opción para la marca 1:'Specialized', 2:'Scott', 3:'Raleigh', 4:'Venzo':\n"
            )
        )
        rodado = int(
            input(
                "Ingrese el número de opción para el rodado 1:'14', 2:'16', 3: '20', 4:'26', 5:'28', 6:'29':\n"
            )
        )
        estilo = int(
            input(
                "Ingrese el número de opción para el estilo 1:'Montaña', 2:'Ruta', 3:'Eléctrica', 4:'Niños', 5: 'Urbana':\n"
            )
        )
        material = int(
            input(
                "Ingrese el número de opción para el material 1:'Hierro', 2:'Aluminio', 3:'Carbono':\n"
            )
        )
        color = int(
            input(
                "Ingrese el número de opción para el color 1:'Rojo', 2:'Azul', 3:'Blanco', 4:'Negro', 5:'Amarillo':\n"
            )
        )

        producto = Producto(
            modelo,
            precio,
            stock,
            imagen,
            detalle,
            marca,
            rodado,
            estilo,
            material,
            color,
        )

        print(productos_db.crear_producto(producto))
    elif opcion_elegida == "4":
        id = int(input("Ingrese el ID del producto que quiere modificar:\n"))
        modelo = input("Ingrese el nombre del modelo:\n")
        precio = int(input("Ingrese el precio:\n"))
        stock = int(input("Ingrese la cantidad en stock:\n"))
        imagen = input("Ingrese URL imagen:\n")
        detalle = input("Redacte la descripción del producto:\n")
        marca = int(
            input(
                "Ingrese el número de opción para la marca 1:'Specialized', 2:'Scott', 3:'Raleigh', 4:'Venzo':\n"
            )
        )
        rodado = int(
            input(
                "Ingrese el número de opción para el rodado 1:'14', 2:'16', 3: '20', 4:'26', 5:'28', 6:'29':\n"
            )
        )
        estilo = int(
            input(
                "Ingrese el número de opción para el estilo 1:'Montaña', 2:'Ruta', 3:'Eléctrica', 4:'Niños', 5: 'Urbana':\n"
            )
        )
        material = int(
            input(
                "Ingrese el número de opción para el material 1:'Hierro', 2:'Aluminio', 3:'Carbono':\n"
            )
        )
        color = int(
            input(
                "Ingrese el número de opción para el color 1:'Rojo', 2:'Azul', 3:'Blanco', 4:'Negro', 5:'Amarillo':\n"
            )
        )

        producto = Producto(
            modelo,
            precio,
            stock,
            imagen,
            detalle,
            marca,
            rodado,
            estilo,
            material,
            color,
        )

        print(productos_db.editar_producto(id, producto))
    elif opcion_elegida == "5":
        id = int(input("Ingrese el número de ID a eliminar:\n"))
        print(productos_db.eliminar_producto(id))
    elif opcion_elegida == "6":
        productos_db.cerrar_conexion()
        print("Programa finalizado")
        break
    else:
        print("Esa opción no es válida, intenta nuevamente")
