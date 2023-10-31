(
	defun cilindro ()
    (print "Dame el radio del cilindro: ")
    (setq r(read))
    (print "Dame la altura del cilindro: ")
    (setq h(read))
    (setq resultado(+ (* 2 3.14 r h) (* 2 3.14 (* r r))))
          (write resultado)
)

;DESCRIPCION
;Se define primero la funcion "cilindro", para posteriormente que el usuario asigne el radio("r") y la altura("h"), teniendo los dos valores de entrada se ejecuta la opercaion pertinente, la cual se divide en dos, el area lateral(* 2 pi r h) y el area de las bases(* 2 pi (* r r)), para posteriormente sumarlas y obtener el area total de un cilindro.