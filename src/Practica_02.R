###########################################
#  FUNCIONES DE POTENCIA
###########################################

square = function(data) {
  for (price in data) {print(price^2)}
}

square(547)

power_function = function(data, power) {
  for (price in data) {print(price^power)}
}

power_function(2,8)

###########################################
# DATAFRAME
###########################################


items=c("potato", "rice", "oil")
jan_price=c(10,20,30)
mar_price=c(18,23,21)
june_price=c(25,31,35)

all_prices=data.frame(items, jan_price, mar_price, june_price)

square(all_prices$jan_price)

###########################################
#   Matrix
###########################################
all_prices_matriz = matrix(c(jan_price, mar_price, june_price), nrow=3)

##########################################
# apply, lapply, unlist]lapply=sapply, tapply
##########################################
###########################################
#   Apply
###########################################

apply(all_prices_matriz, 1, sd)

##########################################
# lappy(data, function, arguments)
# Regresa una lista
##########################################

power_function = function(data, power) {data^power}

##########################################
# sappy(data, function, arguments)
# Regresa una lista
##########################################