```
(
	defun ovalo ()
	      (print "Dame el radio vertical del ovalo: ")
          (setq v(read))
		  (print "Dame el radio horizontal del ovalo: ")
          (setq h(read))
          (setq resultado(* 3.14 (* v h)))
          (write resultado)	  
)
```
# DESCRIPCION
## Se declara la funcion "ovalo", despues sse pregunta el primer radio(vertical) al usuario para guardarlo en "v" , se pregunta el segundo radio(horizontal) del ovalo que se guarda en "h", ya teniendo los dos radios se ejecuta la operacion pi * v * h, la cual nos arroja el resultado del area del ovalo.