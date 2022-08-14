# 7)  Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:

#           9530, 4120, 4580, 1500, 890,7516,426

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”. 
# Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. 
# Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”

historial3 = (9530, 4120, 4580, 1500, 890,7516,426)

promedio = sum(historial3)/len(historial3)

print(promedio)
if promedio > 4500:
       print("Se ha excedido del gasto promedio para su mascota")

# 8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:

#           7510, 7960, 76180, 800, 4100

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. 
# Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

historial4 =  (7510, 7960, 76180, 800, 4100)

def minimo(lista):
    '''Recibe una lista o tupla y retorna el valor máximo dentro de la misma'''
    return min(lista)

print(minimo(historial4))
