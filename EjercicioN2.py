# 2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por
# pantalla con excepción del DNI y el apellido. Los elementos de la lista son:

#            23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

#  que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)

dueno2 = [23546987, 'Maria',  'Perez', 4789689, 'Pueyrredon  811']

for index, value in enumerate(dueno2):
    if index not in (0, 2):
        print(index, value)