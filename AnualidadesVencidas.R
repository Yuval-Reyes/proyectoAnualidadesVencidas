# se presentan las funciones de anualidades vencidas
#autor: Dana Yuval Reyes González
#v1.0: 20 octubre de 2024

#Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
ValorFuturo=function(A, r, n){
  VF=A*(((1+r)^n-1)/r)
  return(VF)
}

#Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
A=function(ValorFuturo, r, n){
  a=ValorFuturo/(((1+r)^n-1)/r)
  return(a)
}

#Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
n=function(ValorFuturo, r, A){
  nump=log(((ValorFuturo*r)/A)+1)/log(1+r)
  return(nump)
}

#Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
r=function(ValorFuturo,n,A){
  tasa=function(i){
    ValorFuturo-A*((1+i)^n-1)/i
}
  tasa_f=uniroot(tasa, c(0,1))$root
  return(tasa_f)
}

#Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
VA=function(A, r, n){
 ValorActual=A*((1-(1+r)^-n)/r)
 return(ValorActual)
}

#Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
A_va=function(VF, r, n){
  a=VA/((1-(1+r)^-n)/r)   
  return(a)
}

#Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
n_va=function(VA, r, A){
  numb=-log(1-((VA*r)/A))/log(1+r)
  return(numb)
}  

#Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
r_va=function(VA, A, Tpers){
  tasa=function(i){
    VA-A*(1-(1+i)^(-n))/i
  }
  tasa_f=uniroot(tasa,c(0,1))$root
  return(tasa_f)
}

