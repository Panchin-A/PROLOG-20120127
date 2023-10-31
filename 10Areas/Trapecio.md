(
	defun trapecio ()
	(print "Dame la Base 1 del trapecio: ")
    (setq B1(read))
	(print "Dame la Base 2 del trapecio: ")
    (setq B2(read))
	(print "Dame la Altura del trapecio: ")
    (setq H(read))
    (setq resultado(/ (* (+ B1 B2) H) 2))
          (write resultado)
)
;DESCRIPCION
;primero declaramos la funcion "trapecio", despues se le pide al usuario que ingrese la base 1 del trapecio guardando el valor en "B1", despues se le pide al usuario que inrese la base 2 guardando el valor en "B2", posteriormente se pide la altura del trapecio para guardar el valor en "H" teniendo esos tres valores se ejecuta la operacion sumando primero las dos bases para el valor restante multiplicarlo por la altura y dividirlo entre 2, obteniendo asi el valor del trapecio.