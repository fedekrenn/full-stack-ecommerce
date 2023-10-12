from config.config import *
from data_access.producto import *

dao = ProductoDao(dbdata)

print(dao.obtener_todos_productos())
