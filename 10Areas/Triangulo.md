(
	defun triangulo ()
	(print "Dame la base del triangulo: ")
    (setq b(read))
	(print "Dame la altura del triangulo: ")
    (setq h(read))
    (setq resultado(/ (* b h) 2))
          (write resultado)	     
)
;DESCRIPCION
;Primero se declara la funcion "triangulo", se pide al usuaio que ingrese la base del triangulo, despues se le pide que ingrese la altura, teniendo esas dos cosas se ejecuta el setq de resultado con la formula de la base por altura entre 2, dando como resultado el area de un triangulo.