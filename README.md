# proyectoAnualidadesVencidas
Con el siguiente codigo, puede usted cargar las funciones relativas a los calculos de interes simple:
```(r)
source("https://raw.githubusercontent.com/Yuval-Reyes/proyectoAnualidadesVencidas/refs/heads/main/QuieroLlorar")
```
Diviremos la explicación de las formulas en dos partes, las que hacen uso del *valor futuro* y las que usan *valor actual*
## valor futuro
### Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Para realizar el ejemplo de valor futuro tenemos el siguiente enunciado:
Una persona deposita al final de cada mes $ 1.000 al 5% interés mensual durante 5 meses. ¿Cuánto retira al final del 5to mes?
Donde:
$A$=$1,000.00
$i$=5%
$Tp$=5 meses

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
A=1000
i=0.05
r=0.05/12
Tp=60
# calculamos el valor futuro
VFt=ValorFuturo(A=A,r=r,Tp=Tp)
# imprimimos el resultado
VFt
```
### Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
Para el ejemplo de anualidad tenemos el enunciado siguiente:
Una persona desea acumular $200,000 en 15 años mediante pagos mensuales al final de cada mes bajo una anualidad vencida con una tasa de interés del 3% anual, compuesta mensualmente. ¿Cuánto debe pagar cada mes?
Donde:
$VF$=$200000
$i$=3%
$t$=180 meses

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VFt=200000
i=0.03
r=0.03/12
Tp=180
# calculamos el valor de la anualidad
A=Anualidad(VFt=VFt,r=r,Tp=Tp)
# imprimimos el resultado
A
```
### Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
Para este ejemplo tenemos el enunciado:
Un individuo realiza pagos mensuales de $2,500 al final de cada mes en una cuenta que ofrece una tasa de interés del 4.5% anual, compuesta mensualmente. Si desea acumular $180,000, ¿cuántos meses debe realizar estos pagos bajo una anualidad vencida?
Donde:
$VF$=180,000
$i$=4.5%
$A$=2,500

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VFt=180000
i=0.045
r=0.045/12
A=2500
# calculamos el numero de plazos
Tp=Plazos(VFt=VFt,r=r,A=A)
# imprimimos el resultado
Tp
```
### Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
Para el siguiente ejemplo:
Se realizan pagos quincenales de $900 al final de cada quincena en una cuenta de ahorro durante 6 años bajo una anualidad vencida. Si al final del plazo se acumulan $120,000, ¿cuál es la tasa de interés anual compuesta quincenalmente?
Donde:
$VF$=120,000
$i$=4.5%
$A$=900

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VFt=120000
Tp=60
A=900
# calculamos la tasa del periodo
r=TasaPer(VFt=VFt,Tp=Tp,A=A)
# imprimimos el resultado
r
```
## Valor actual

### Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
Suponga que una persona pide prestado para una nueva tableta para utilizarla en la escuela y desea pagarlos en 48 pagos quincenales de $66.41. Para esto la tienda departamental decide cobrarle una tasa de interés del 12% anualizada ¿A cuánto asciende el valor de la tableta adeudado?
$A$=$66.41
$r$=12%
$n$=48

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
TpVA=48
rVA=0.12/TpVA
Ava=66.41
# calculamos el valor actual
VAt=ValorActual(rVA=rVA,TpVA=TpVA,Ava=Ava)
# imprimimos el resultado
VAt
```
### Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
usando el mismo ejemplo anterior podemos seguir con la demostracion
Donde:
$VA$=$3,000
$r$=12%
$n$=48 meses

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
TpVA=48
rVA=0.12/TpVA
VAt=3000
# calculamos el valor de la anualidad
Ava=AnualidadVA(rVA=rVA,TpVA=TpVA,VAt=VAt)
# imprimimos el resultado
Ava
```
### Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
ahora aplicando el ejemplo de la tableta para obtener el numero de periodos seria:

$VA$=3,000
$r$=12%
$A$= $66.41

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
rVA=0.12/48
Ava=66.41
VAt=3000
# calculamos el valor de la anualidad
TpVA=PlazosVA(rVA=rVA,VAt=VAt,Ava=Ava)
# imprimimos el resultado
TpVA
```
### Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
Por ultimo usaremos el ejemplo para calcular la tasa del periodo:
Donde:
$VA$=3,000
$n$=48 meses
$A$=61.44

Se realizan los calculos:
```(r)
# Creamos objetos con valores de entrada
VAt=3000
TpVA=48
Ava=66.41
# calculamos la tasa del periodo
rVA=TasaPeriodoVA(VAt=VAt,TpVA=TpVA,Ava=Ava)
# imprimimos el resultado
rVA
```
