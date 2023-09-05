rm(list=ls())
#Definir un vector de datos de temperatura en grados Kelvin para un mes de
#30 dias donde las temperaturas ascienden 0.5 K por dia desde los 285 K.
#Crear un ciclo que convierta a cada uno de los registros en grados Celsius.
#Crear un ciclo que, mientras que las temperaturas sean inferiores a los
#30°C, imprima el siguiente mensaje por pantalla “El dia X y con una
#temperatura de XX, todav´ıa no se super´o el umbral de los 30°C”


T0<- 285          #temperatura inicial 
dt<- 0.5          #diferencia de temperatura
dias <- 30        #cantidad de ias del mes
Tdias <- 1:dias   #vector del mes

Tdias[1]<- T0
#ciclo para conseguir las temperaturas pedidas.
for(i in Tdias){
  if(i==T0){
    next
  }
  Tdias[i] <- Tdias[i-1]+dt
}
print(Tdias)

#ciclo que convierta los registros en Celcius.
TdiasCel<- 1:dias
for(i in TdiasCel){
  TdiasCel[i] <- Tdias[i]-273
}
print(TdiasCel)

#ciclo que da alertas
for (i in TdiasCel) {
  if(TdiasCel[i]<30){
    frase <- paste("el dia ", i," con una temperatura de ",TdiasCel[i]," 
        todavia no supeò el umbral de los 30ºC")
    print(frase)
  }
  fraseemergencia<- paste ("el dia", TdiasCel[i], "superò el umbral de temp")
  print(fraseemergencia)
  
}