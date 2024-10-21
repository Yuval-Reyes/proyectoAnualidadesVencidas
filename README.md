# proyectoAnualidadesVencidas
Con el siguiente codigo, puede usted cargar las funciones relativas a los calculos de interes simple:
source("https://raw.githubusercontent.com/Yuval-Reyes/proyectoAnualidadesVencidas/refs/heads/main/AnualidadesVencidas.R")
Acontinuacion podremos ver ejemplos con el uso de las formulas:

### Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Para realizar el ejemplo de valor futuro tenemos el siguiente enunciado:
Una persona deposita al final de cada mes $ 1.000 al 5% interés mensual durante 5 meses. ¿Cuánto retira al final del 5to mes?
Donde:
$A$=$1,000.00
$r$=5%
$n$=5 meses

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
a=1000
tasa=0.05
numb=5
#Calculamos el valor futuro
VF=ValorFuturo(A=a,r=tasa_f,n=numb)
#Imprimimos el resultado
ValorFuturo
```
