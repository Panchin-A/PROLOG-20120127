; Problema 1
; Definir la función para calcular el precio total en función del número de pantalones
(defun calcular-precio (num-pantalones)
  (cond
    ((< num-pantalones 5) (* num-pantalones precio-normal)) ; Precio normal si se compran menos de 5 pantalones
    ((and (>= num-pantalones 5) (< num-pantalones 12)) (* num-pantalones (- 1.0 descuento-15%))) ; Descuento del 15% si se compran 5 o más pero menos de 12 pantalones
    ((>= num-pantalones 12) (* num-pantalones (- 1.0 descuento-30%)))) ; Descuento del 30% si se compran 12 o más pantalones

; Definir precios y descuentos
(defvar precio-normal 100)
(defvar descuento-15% 0.85)
(defvar descuento-30% 0.7)

; Solicitar el número de pantalones al usuario y calcular el total a pagar
(format t "Ingrese el número de pantalones a comprar: ")
(setq num-pantalones (read))
(setq total-a-pagar (calcular-precio num-pantalones))
(format t "Total a pagar: ~a~%" total-a-pagar))
; Problema 2
; Solicitar información del solicitante
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

; Evaluar si el solicitante es elegible para el préstamo
(cond
  ((and (equal historia-crediticia 'b) (> (calcular-puntos salario-anual cantidad-pedida valor-propiedades) 6))
   (format t "El solicitante ~a es elegible para el préstamo.~%" nombre))
  (t (format t "El solicitante ~a no es elegible para el préstamo.~%" nombre)))

; Función para calcular los puntos del solicitante
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
    ; Problema 3
    (format t "Ingrese una letra minúscula: ")
(setq letra (read))

; Determinar si la letra es vocal, semivocal o consonante
(case letra
  ((#\a #\e #\i #\o #\u) (format t "La letra ~c es una vocal.~%" letra))
  (#\y (format t "La letra ~c es una semivocal.~%" letra))
  (t (format t "La letra ~c es una consonante.~%" letra)))
; Problema 4
  ; Solicitar un año al usuario
(format t "Ingrese un año: ")
(setq año (read))

; Comprobar si el año es bisiesto o no
(if (or (and (divisible-p año 4) (not (divisible-p año 100))) (divisible-p año 400))
    (format t "El año ~a es bisiesto.~%" año)
    (format t "El año ~a no es bisiesto.~%" año))

; Función para verificar si un número es divisible por otro
(defun divisible-p (num divisor)
  (= (mod num divisor) 0))
  ; Problema 5
  ; Solicitar el número de mes al usuario
(format t "Ingrese el número de mes (del 1 al 12): ")
(setq mes (read))

; Determinar el número de días en el mes
(cond
  ((= mes 2) (format t "El mes 2 tiene 28 días.~%"))
  ((member mes '(4 6 9 11)) (format t "El mes ~a tiene 30 días.~%" mes))
  ((member mes '(1 3 5 7 8 10 12)) (format t "El mes ~a tiene 31 días.~%" mes))
  (t (format t "MES ERRONEO~%")))
