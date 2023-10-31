(
	defun hexagono ()
    (print "Dame el lado del hexagono: ")
    (setq lado(read))
    (print "Dame el apotema del hexagono: ")
    (setq apotema(read))
          (setq resultado(/ (* lado 6 apotema) 2))
          (write resultado)
)