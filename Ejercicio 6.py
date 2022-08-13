historial2= (23500, 5960, 2300, 10200, 8900)

def contar_gastos(lista):
    '''Recibe una lista y cuentas los valores mayores a 5000'''
    cont = 0
    total = 0
    for gasto in lista:
        if gasto > 5000:
            cont += 1
            total += gasto
    return f'La cantidad de gastos superiroes a 5000 fue de: {cont} y el total {total}'

print (contar_gastos(historial2))
