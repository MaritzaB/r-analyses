## Online R compiler to run R program online
## Print "Hello World!" message

# Crear arreglo

ene_18 = c(10,11,20)
feb_18 = c(20,22,25)
mar_18 = c(30,32,34)

ene_19 = c(20,23,24)
feb_19 = c(34,25,24)
mar_19 = c(20,12,14)

variacion_precios = array(c(
ene_18,
feb_18,
mar_18,
ene_19,
feb_19,
mar_19
), dim=c(3,3,2))

variacion_precios

# Dataframes

productos = c("gas_premium", "gas_regular", "diesel")
tabla_general = data.frame(productos, ene_18, feb_18, mar_18)

print("Vista de la tabla general")
tabla_general

# Acceder a un elemento específico del dataframe

print("Accede a columna de enero 2018")
tabla_general$ene_18

print("Columna feb2018")
tabla_general[["feb_18"]]

print("Elemento 2,3")
tabla_general[2,3]

print("Agrega fila con rbind")
incremento = c(2,4,6)
tabla_general = rbind(tabla_general, incremento)

print("Ignora 1st row - Borra el nombre de la columna de productos")
tabla_general = tabla_general[-1]
tabla_general

print("Agrega columna con cbind")
abril = c(21,22,23,24)
tabla_general = cbind(tabla_general, abril)
tabla_general

class(tabla_general)
class(productos)
class(ene_18)

#########################################
# Ciclos                                #
#########################################

precios_ene18 = tabla_general$ene_18
for (precio in precios_ene18)(
  print(paste("el precio es: ", precio))
)

#########################################
#     Función para calcular el IVA      #
#########################################

get_iva = function(valor){
  precio * 0.16
}

for (precio in precios_ene18)(
  get_iva(precio)
)
