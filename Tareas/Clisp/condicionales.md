# 1. Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene las siguientes tarifas, si se compran menos de 5 pantalones estos se cobran a su precio normal, en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, si se compran mas de 12 se les descuenta 30% en cada pantalon.  Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar y con ello imprima el total a pagar por la compra hecha. 


### Definir la función para calcular el precio total en función del número de pantalones
```
(defun calcular-precio (num-pantalones)
  (cond
    ((< num-pantalones 5) (* num-pantalones precio-normal)) ; Precio normal si se compran menos de 5 pantalones
    ((and (>= num-pantalones 5) (< num-pantalones 12)) (* num-pantalones (- 1.0 descuento-15%))) ; Descuento del 15% si se compran 5 o más pero menos de 12 pantalones
    ((>= num-pantalones 12) (* num-pantalones (- 1.0 descuento-30%)))) ; Descuento del 30% si se compran 12 o más pantalones
```
### Definir precios y descuentos
```
(defvar precio-normal 100)
(defvar descuento-15% 0.85)
(defvar descuento-30% 0.7)
```
### Solicitar el número de pantalones al usuario y calcular el total a pagar
```
(format t "Ingrese el número de pantalones a comprar: ")
(setq num-pantalones (read))
(setq total-a-pagar (calcular-precio num-pantalones))
(format t "Total a pagar: ~a~%" total-a-pagar)
```
## Se utiliza cond para evaluar múltiples condiciones.
## Se usa if en las ramas de cond para comprobar si se cumple una condición específica.

# 2. Escriba un programa para determinar si un solicitante puede lograr un préstamo. Deberá pedir los siguientes datos para cada solicitante: Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida, salario anual, y valor de otras propiedades.  El banco solo considerará a los solicitantes con un estado de crédito bueno.  De aquellos, solo aceptara los que tengan mas de 6 puntos.  Los puntos se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o más.  3 puntos si el salario es por lo menos 25% pero menos de 50% del préstamo.  1 punto si el salario es por lo menos 10% pero menos de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble del préstamo o mas.  3 puntos si se tiene otra propiedad igual al préstamo pero menor del doble. 

### Solicitar información del solicitante
```
(format t "Ingrese el nombre del solicitante: ")
(setq nombre (read))
(format t "Ingrese la historia crediticia ('b' buena o 'm' mala): ")
(setq historia-crediticia (read))
(format t "Ingrese la cantidad pedida: ")
(setq cantidad-pedida (read))
(format t "Ingrese el salario anual: ")
(setq salario-anual (read))
(format t "Ingrese el valor de otras propiedades: ")
(setq valor-propiedades (read))
```
### Evaluar si el solicitante es elegible para el préstamo
```
(cond
  ((and (equal historia-crediticia 'b) (> (calcular-puntos salario-anual cantidad-pedida valor-propiedades) 6))
   (format t "El solicitante ~a es elegible para el préstamo.~%" nombre))
  (t (format t "El solicitante ~a no es elegible para el préstamo.~%" nombre)))
```
### Función para calcular los puntos del solicitante
```
(defun calcular-puntos (salario cantidad-propiedades valor-propiedades)
  (+
   (cond
     ((>= salario (* 0.5 cantidad-propiedades)) 5)
     ((and (>= salario (* 0.25 cantidad-propiedades)) (< salario (* 0.5 cantidad-propiedades))) 3)
     ((and (>= salario (* 0.1 cantidad-propiedades)) (< salario (* 0.25 cantidad-propiedades))) 1)
     (t 0))
   (cond
     ((>= valor-propiedades (* 2 cantidad-propiedades)) 5)
     ((and (= valor-propiedades (* 2 cantidad-propiedades)) (< valor-propiedades (* 2 cantidad-propiedades))) 3)
     (t 0))))
```
## Se emplea cond para evaluar las condiciones de elegibilidad del solicitante.
## Se usa if para comprobar si la historia crediticia es buena y si los puntos calculados son mayores a 6.

# 3. Escriba un programa que pida una letra minúscula, el programa deberá imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una consonante. 
### Solicitar una letra al usuario
```
(format t "Ingrese una letra minúscula: ")
(setq letra (read))
```
### Determinar si la letra es vocal, semivocal o consonante
```
(case letra
  ((#\a #\e #\i #\o #\u) (format t "La letra ~c es una vocal.~%" letra))
  (#\y (format t "La letra ~c es una semivocal.~%" letra))
  (t (format t "La letra ~c es una consonante.~%" letra)))
```
## Se utiliza case para comparar una variable con múltiples valores posibles. 

# 4. Para determinar si un año es bisiesto o no debe de cumplir las siguiente regla: Ser divisible entre 4 y no divisible entre 100 o bien divisible entre 400.  Escriba un programa que pida como entrada el año e imprima si el año es bisiesto o no.

### Solicitar un año al usuario
```
(format t "Ingrese un año: ")
(setq año (read))
```
### Comprobar si el año es bisiesto o no
```
(if (or (and (divisible-p año 4) (not (divisible-p año 100))) (divisible-p año 400))
    (format t "El año ~a es bisiesto.~%" año)
    (format t "El año ~a no es bisiesto.~%" año))
```
### Función para verificar si un número es divisible por otro
```
(defun divisible-p (num divisor)
  (= (mod num divisor) 0))
```
## Se utiliza if para evaluar si se cumple una de las condiciones que determinan si un año es bisiesto. 

# 5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e imprima el numero de dias que tiene el mes, donde:

 ##  • El mes 2 tiene 28 dias
 ##  • Los meses 4,6,9 y 11 tienen 30 dias
 ##  • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

#  Si da un mes diferente a los anteriores debera imprimir el mensaje
# “MES ERRONEO”.


### Solicitar el número de mes al usuario
```
(format t "Ingrese el número de mes (del 1 al 12): ")
(setq mes (read))
```
### Determinar el número de días en el mes
```
(cond
  ((= mes 2) (format t "El mes 2 tiene 28 días.~%"))
  ((member mes '(4 6 9 11)) (format t "El mes ~a tiene 30 días.~%" mes))
  ((member mes '(1 3 5 7 8 10 12)) (format t "El mes ~a tiene 31 días.~%" mes))
  (t (format t "MES ERRONEO~%"))
```
## Se emplea cond para evaluar en qué mes nos encontramos y luego se utiliza if en las ramas de cond para informar el número de días en ese mes.