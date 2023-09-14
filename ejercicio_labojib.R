rm(list=ls())

#Ingreso de datos
dia_elegido<- as.numeric(readline("ingrese el numero de dia de agosto"))  #dia que elegimos, es numerico
agosto<- 1:31

#temperaturas de agosto
for (i in agosto) {
  temp_i<-as.numeric(readline("ingrese temperatura del dia"))
  
  #if para correccion de datos
  if (is.na(temp_i)) {
    temp_i<-as.numeric(readline("vuelva a ingresar temperatura del dia"))
  } else {
    print("correcto, continue por favor")
  }
 #El programa corre salvo por esta parte que es la encargada de verificar si 
  #los datos ingresados son válidos.
  
  agosto[i]<-temp_i
  i=i+1
}
#calculo de la media
t_med<-mean(agosto)

#mensaje
if (agosto[dia_elegido]<t_med) {
  mensaje_bajo<-cat("el dia ", dia_elegido, " del mes de Agosto la temperatura fue de ",
  agosto[dia_elegido], " ºC, es decir debajo de la media mensual",sep = "")
  
  print(mensaje_bajo)
  
  } else if (agosto[dia_elegido]>t_med){
    mensaje_alto<-cat("el dia ", dia_elegido, " del mes de Agosto la temperatura fue de ",
                      agosto[dia_elegido], " ºC, es decir por encima de la media mensual",sep="")
    print(mensaje_alto)
  
  } else {
    mensaje_igual<-cat("el dia ", dia_elegido, " del mes de Agosto la temperatura fue de",
                      agosto[dia_elegido], " ºC, es decir igual de la media mensual",sep="")
    print(mensaje_igual)
  }


