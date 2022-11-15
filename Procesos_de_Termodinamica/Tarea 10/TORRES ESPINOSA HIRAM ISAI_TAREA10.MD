# Tarea 10 Hiram Isaí Torres Espinosa
---

>INDICACIONES. — Contesta los siguientes problemas y ejercicios de interpolación utilizando las TABLAS TERMODINÁMICAS correspondientes, una vez realizado digitaliza tu archivo entregable con extensión PDF, nombrándolo de la siguiente manera: APELLIDO PATERNO APELLIDO MATERNO NOMBRE_TAREA 10


1. **Un recipiente rígido contiene 10 kg de agua a 90 °C. Si 8 kg del agua están en forma líquida y el resto como vapor, determine:**
    a) la presión en el recipiente
    - *De la tabla A-4 se obtiene que la $P$<sub>sat</sub>* = 70.183

    b) el volumen del recipiente
    - $V$<sub>$total$</sub> = $V$<sub>$agua$</sub> + $V$<sub>$vapor$</sub>
    $V$<sub>$total$</sub>= ($0.001036\frac{m^3}{kg}$)($8kg$) + ($2.3593\frac{m^3}{kg}$)($2kg$)
    $V$<sub>$total$</sub>= $4.726888$
    ---
2. **Refrigerante 134a sobrecalentado, cuyo volumen específico es 0.46190 pies3/lbm, fluye por un tubo a 120 psia. ¿Cuál es la temperatura de saturación en el tubo?**
    - *Obteniendo de la tabla A-13E se obtiene que para una $P=120psia$ y un $v=0.46190\frac{ft^3}{lbm}$ la temperatura es:*
    **$T=140K$** 
    ---
3. **Con la Tabla A-17 Propiedades de gas ideal del aire, complementa la siguiente tabla utilizando
los valores de referencia y el método de interpolación:**
 
| |$T$<sub>[$K$]</sub>|$h$<sub>[$\frac{kJ}{kg}$]</sub>|$P_r$|$u$<sub>[$\frac{kJ}{kg}$]|$V_r$|
|--|--|--|--|--|--|--|
|1 |223|222.985|0.49261|158.974|1303.7|
|2 |278.29|278.41|1.0666|198.524| 750 |
|3 |299.2028|299.39|1.3734| 213.5 |625.47|  
|4 |843.53|870|58.57|627.86|41.37|
|5 |941.86|980.03|90|709.66|30.05|
|6 |535|539.165|10.735|385.59|143.2|
|7 |1186.25|1261.67|227.138|921.12|15|
|8 |583.78|590|14.73|422.42|113.77| 
|9 |770|789.105|41.31|568.065|53.59|
|10 |870.39|899.853|66.151|650|37.816|

> **Para completar la tabla y realizar cada operación más rapido, hice un programa en python el cual define una función y pide los valores solo para teclearlos y que resuelva la interpolación.** 

**Dejo el código también para su visualización**

```
def interpolacion (y1,x,x1,y2,x2):
    return y1+(x-x1)*((y2-y1)/(x2-x1))


x = float(input("Valor x:"))
x1 = float(input("Valor x1:"))
x2 = float(input("Valor x2:"))
y1 = float(input("Valor y1:"))
y2 = float(input("Valor y2:"))
resultado = interpolacion(y1,x,x1,y2,x2)
print(resultado)
```

