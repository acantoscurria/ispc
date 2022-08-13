# 9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

#           8520, 9510, 7530, 3570, 1590

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. 
# Crear una función para determinar el valor máximo de atención gastada en “Toto”.

historial5 = (8520, 9510, 7530, 3570, 1590)

def maximo(lista):
    '''Retorna el valor maximo de una lista'''
    return max(lista)

print(maximo(historial5))


# 10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.

#           Juan,  Mario,  Ariel,  Josefina,  Marianella.
# Ordenarla alfabéticamente y mostrarla por pantalla.

clientes = [ 'Juan',  'Mario',  'Ariel',  'Josefina',  'Marianella']
clientes.sort()
print(clientes)