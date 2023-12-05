;Ejercicio-1

(defun EJERCICIO1 (cantidad)
  (cond
    ((< cantidad 5) 
     (* cantidad 25.0)) 
    ((< cantidad 12) 
     (* cantidad (- 25.0 (* 25.0 0.15)))) 
    (t 
     (* cantidad (- 25.0 (* 25.0 0.30)))))) 

(format t "Ingrese la cantidad de pantalones a comprar: ")
(let ((cantidad (read)))
  (format t "Total a pagar: $~a~%" (EJERCICIO1 cantidad)))
