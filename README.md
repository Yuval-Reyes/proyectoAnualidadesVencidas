# proyectoAnualidadesVencidas
Con el siguiente codigo, puede usted cargar las funciones relativas a los calculos de interes simple:
```(r)
source("https://raw.githubusercontent.com/Yuval-Reyes/proyectoAnualidadesVencidas/refs/heads/main/anualidadesVencidas(1).R")
```
Diviremos la explicación de las formulas en dos partes, las que hacen uso del *valor futuro* y las que usan *valor actual*
## valor futuro
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
anualidades=1000
tasa=0.05
noPeriodos=5
#Calculamos el valor futuro
VF=ValorFuturo(A=anualidades,r=tasa,n=noPeriodos)
#Imprimimos el resultado
VF
```
### Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
Para el ejemplo de anualidad tenemos el enunciado siguiente:
Una persona desea acumular $200,000 en 15 años mediante pagos mensuales al final de cada mes bajo una anualidad vencida con una tasa de interés del 3% anual, compuesta mensualmente. ¿Cuánto debe pagar cada mes?
Donde:
$VF$=$200000
$r$=3%
$n$=180 meses

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
VF=200000
tasa=0.03
noPeriodos=180
#Calculamos la anualidad
anualidad=A(ValorFuturo=VF,r=tasa,n=noPeriodos)
#Imprimimos el resultado
anualidad
```
### Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
Para este ejemplo tenemos el enunciado:
Un individuo realiza pagos mensuales de $2,500 al final de cada mes en una cuenta que ofrece una tasa de interés del 4.5% anual, compuesta mensualmente. Si desea acumular $180,000, ¿cuántos meses debe realizar estos pagos bajo una anualidad vencida?
Donde:
$VF$=180,000
$r$=4.5%
$A$=2,500

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
VF=180000
tasa=0.045
anualidad=2500
#Calculamos el numero de periodos
noPeriodos=n(ValorFuturo=VF,r=tasa,A=anualidad)
#Imprimimos el resultado
noPeriodos
```
### Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
Para el siguiente ejemplo:
Se realizan pagos quincenales de $900 al final de cada quincena en una cuenta de ahorro durante 6 años bajo una anualidad vencida. Si al final del plazo se acumulan $120,000, ¿cuál es la tasa de interés anual compuesta quincenalmente?
Donde:
$VF$=120,000
$n$=4.5%
$A$=900

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
VF=120000
noPeriodos=144
anualidad=900
#Calculamos el numero de periodos
tasa=r(ValorFuturo=VF,n=noPeriodos,A=anualidad)
#Imprimimos el resultado
tasa
```
## Valor actual

### Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Suponga que una persona pide prestado para una nueva tableta para utilizarla en la escuela y desea pagarlos en 48 pagos quincenales de $66.41. Para esto la tienda departamental decide cobrarle una tasa de interés del 12% anualizada ¿A cuánto asciende el valor de la tableta adeudado?
$A$=$66.41
$r$=12%
$n$=48

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
anualidades=66.41
tasa=0.12
noPeriodos=48
#Calculamos el valor actual
Va=VA(A=anualidades,r=tasa,n=noPeriodos)
#Imprimimos el resultado
Va
```
### Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
usando el mismo ejemplo anterior podemos seguir con la demostracion
Donde:
$VA$=$3,000
$r$=12%
$n$=48 meses

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
ValorAct=3000
tasa=0.12
noPeriodos=48
#Calculamos la anualidad
anualidad=A_va(VA=ValorAct,r=tasa,n=noPeriodos)
#Imprimimos el resultado
anualidad
```
### Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
ahora aplicando el ejemplo de la tableta para obtener el numero de periodos seria:

$VA$=3,000
$r$=12%
$A$= $66.41

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
ValorAct=3000
tasa=0.12
anualidad=66.41
#Calculamos el numero de periodos
noPeriodos=n_va(VA=ValorAct,r=tasa,A=anualidad)
#Imprimimos el resultado
noPeriodos
```
### Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
Por ultimo usaremos el ejemplo para calcular la tasa del periodo:
Donde:
$VA$=3,000
$n$=48 mese
$A$=61.44

Se realizan los calculos:
```(r)
# creamos objetos con valores de entrada:
ValorAct=3,000
noPeriodos=48
anualidad=61.44
#Calculamos el numero de periodos
tasa=r_va(VA=ValorAct,n=noPeriodos,A=anualidad)
#Imprimimos el resultado
tasa
```
