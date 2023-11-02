# 🚴‍♀️ Proyecto Integrador - Tienda Full

Fork del proyecto grupal para el módulo "Programador Full Stack" de la tecnicatura en desarrollo web y aplicaciones digitales del ISPC . Está compuesto por tres espacios curriculares: Introducción a la Programación Web I, Programación I y Proyecto Integrador.

## 💻 Descripción del proyecto 

Se trata de una aplicación web fullstack para una tienda ecommerce, el rubro seleccionado es la venta de bicicletas. El alcance de este proyecto es un diseño estático para el front y un back que se conecta a una DB desplegada en MySQL. Front y back no están conectados entre sí en los sprint alcanzados (A realizar en los próximos).

## 🛠 Instalación y ejecución

1 - Clonar el proyecto

`git clone https://github.com/proyecto-modulo-programador/programador.git`

2- Instalar el Connector de MySQL

` pip install mysql-connector-python ` 

3 - Para desplegar el frontend debemos abrir el archivo `index.html` dentro de la carpeta frontend, el primer acceso es a la landing donde se nos muestra el call to action, luego a través de su menú podremos navegar la web hacia distintas páginas tal como "Contacto", "Acerca de nosotros", "Productos", etc. Posee una sección de logueo/registro, la cual imita el funcionamiento de un login pero con datos preestablecidos (proximo feature cuando se conecten front y back)

![image](https://github.com/ISPC-23/FullStack2023/assets/132081100/29c5e580-8044-4560-8a41-f70178a0cc54)

4 - Para correr el servidor backend debemos correr el comando:

` python backend/main.py ` 

En este punto se podrá, a través de la consola, manejar el CRUD a través de las clases establecidas que se conectan a la DB. Si bien esto estaba fuera del alcance del sprint se consideró apropiado para probar el crud de una manera ágil.

```
########################### MENÚ ###########################
    1. Consultar todos los productos
    2. Consultar productos por id
    3. Crear producto
    4. Modificar producto
    5. Eliminar producto
    6. Salir
#############################################################
```

### ℹ Anexos
En la carpeta database se puede encontrar:

- El Der en formato mwb de Workbench
- El archivo .sql con el scrip de base de datos

### 📃 Documentación:

Toda la documentación del proyecto tal como el documento IEEE830, los diagramas (de clase, entidad-relación, etc), la documentación de las ceremonias, etc. Pueden encontrarse en la  [Wiki del repositorio](https://github.com/ISPC-23/FullStack2023/wiki)

## ❗ Puntos a tener en cuenta

- Para hacer el programa más óptimo y ejecutable en cualquier entorno, se optó por subir la base de datos a un servidor en la nube, el mismo es [Clevercloud](https://www.clever-cloud.com/), los datos de conexión están en el archivo de configuración y modificando sólo los datos por el localhost puede ejecutarse con una DB local. De igual manera, en la carpeta database está el archivo "db_script.sql" con el script que crea la db para poder ejecutarla en local.

