(
	defun circulo ()
	(print "Dame el radio del circulo: ")
    (setq r(read))
    (setq resultado(* pi (* r r)))
          (write resultado)	      
)
;DESCRIPCION
;Primero se declara la funcion "circulo", para posteriormente pedir al usuario que ingrese el radio del circulo, teniendo el radio se ejecuta la operacion la cual es pi por R al cuadrado, obteniendo asi el resultado del area de un circulo.