(
	defun hexagono ()
    (print "Dame el lado del hexagono: ")
    (setq lado(read))
    (print "Dame el apotema del hexagono: ")
    (setq apotema(read))
          (setq resultado(/ (* lado 6 apotema) 2))
          (write resultado)
)
;DESCRIPCION
;Primero declaramos la funcion "hexagono", despues preguntamos al usuario el valor de uun lado de la figura, despues preguntamos el valor del apotema que es la distancia que existe desde el centro a uno de los lados de la figura, teniendo esos dos valores primero se saca el perimetro de la figura que seria lado*6 ya que es un hexagono, y ya teniendo el perimetro se multiplica con el apotema y se divide entre 2 dando asi el resultado del area.