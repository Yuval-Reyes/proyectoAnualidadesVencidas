# se presentan las funciones de anualidades vencidas
#autor: Dana Yuval Reyes González
#v1.0: 20 octubre de 2024

#Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
VF=function(A, R, Tpers){
  xsalida=A*(((1+r)^Tpers-1)/r)
  return(xsalida)
}

#Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
A=function(VF, r, Tpers){
  xsalida=VF/(((1+r)^Tpers-1)/r)
  return(xsalida)
}

#Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
Tpers=function(VF, r, A){
  xsalida=log(((VF*r)/A)+1)/log(1+r)
  return(xsalida)
}

#Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
r=function(VF,Tpers,A){
  xsalida=tasaAnualidadVencidaVF(VF=vf,A=a,Tpers=tpers,umbral=10*(10^-17))
  return(xsalida)
}

#Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
VA=function(A, R, Tpers){
 xsalida=A*((1-(1+r)^-Tpers)/r)
 return(xsalida)
}

#Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
A=function(VF, r, Tpers){
  xsalida=VA/((1-(1+r)^-Tpers)/r)   
  return(xsalida)
}

#Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
Tpers=function(VA, r, A){
  xsalida=-log(1-((VA*r)/A))/log(1+r)
  return(xsalida)
}  

#Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
r=function(VA, A, Tpers){
  xsalida=tasaAnualidadVencidaVA(VA=va,A=a,Tpers=tpers,umbral=10*(10^-17))
  return(xsalidasalida=)
}