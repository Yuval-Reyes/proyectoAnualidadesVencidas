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
  a=(ValorFuturo * i) / ((1 + i)^n - 1)
  return(a)
}

#Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
n=function(ValorFuturo, r, A){
  nump=log((ValorFuturo*r)/A+1)/log(1+r)
  return(nump)
}

#Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
r=function(ValorFuturo,n,A){
  tasa=function(i){
    ValorFuturo - A * (((1 + r)^n - 1) / r)
  }
  
  lower = 0.0001  
  upper = 1
  f.lower = func(lower)
  f.upper = func(upper)
  
  if (is.na(f.lower) || is.na(f.upper)) {
    stop("No se puede calcular en el intervalo dado.")
  }
  
  if (f.lower * f.upper > 0) {
    stop("La función no cambia de signo en el intervalo dado.")
  }
  
  tasa_f = uniroot(func, c(lower, upper))$root
  return(tasa_f)
}

#Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
VA=function(A, r, n){
 ValorActual=A*((1-(1+r)^(-n))/r)
 return(ValorActual)
}

#Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
A_va=function(VA, r, n){
  a=A * ((1-(1+r)^(-n))/r)   
  return(a)
}

#Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
n_va=function(VA, r, A){
  numb=log(A/(A-VA*r))/log(1+r)
  return(numb)
}  

#Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
#Función auxiliar para expandir el intervalo de búsqueda
expandir_intervalo <- function(func, lower, upper, step = 0.1, max_iter = 10) {
  for (i in 1:max_iter) {
    f.lower <- func(lower)
    f.upper <- func(upper)
    
    if (!is.na(f.lower) && !is.na(f.upper) && f.lower * f.upper <= 0) {
      return(c(lower, upper))  # Si hay cambio de signo, devuelve el intervalo
    }
    
    # Expande el intervalo
    lower <- lower - step
    upper <- upper + step
  }
  stop("No se encontró un intervalo válido para el cambio de signo.")
}


r_va<-function(VA, A, Tpers){
  tasa<-function(i){
    VA-A*(1-(1+i)^(-n))/i
  }
  # Establecer un intervalo inicial
  lower <- 0.0001
  upper <- 1
  
  # Intentar expandir el intervalo si no hay cambio de signo
  intervalo <- expandir_intervalo(func, lower, upper)
  
  # Resolver usando uniroot con el intervalo ajustado
  tasa_f <- uniroot(func, intervalo)$root
  return(tasa_f)
}

