(
	defun pentagono ()
	(print "Dame el lado del pentagono: ")
    (setq lado(read))
    (print "Dame el apotema del pentagono: ")
    (setq apotema(read))
          (setq resultado(/ (* lado 5 apotema) 2))
          (write resultado)
)
;DESCRIPCION
;;Primero declaramos la funcion "pentagono", despues preguntamos al usuario el valor de uun lado de la figura, despues preguntamos el valor del apotema que es la distancia que existe desde el centro a uno de los lados de la figura, teniendo esos dos valores primero se saca el perimetro de la figura que seria lado*5 ya que es un pentagono, y ya teniendo el perimetro se multiplica con el apotema y se divide entre 2 dando asi el resultado del area.