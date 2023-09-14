rm(list=ls())

#ingreso de datos
matriz_pp_verano<-matrix(c(28,40,43,130,153.2,152.9,118.9,135.4,127.2), nrow=3,
                         byrow=T,)
#nombre a las filas y columnas
filas<-c("mendoza", "jujuy", "buenos aires")
columnas<- c("pp diciembre", "pp enero", "pp febrero")
row.names(matriz_pp_verano)<- filas
colnames(matriz_pp_verano)<- columnas
#media por estaciones
mediascol<- colMeans(matriz_pp_verano)
mediasrow<- rowMeans(matriz_pp_verano)  #esta es por estacion
#agrego una col
matriz_pp_verano2<-cbind(matriz_pp_verano,mediasrow)
#agregar informacion a nuestra matriz
neuquen<-c(11.3,12.5,11.9,27.8)
rbind(matriz_pp_verano2,neuquen)
#calcula la media de enero
enero_media<-mean(matriz_pp_verano2[,2])
msj<-cat("la temperatura media de enero para todas las estaciones es ", enero_media,
      "mm")
print(msj)