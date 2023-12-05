(
	defun pentagono ()
	(print "Dame el lado del pentagono: ")
    (setq lado(read))
    (print "Dame el apotema del pentagono: ")
    (setq apotema(read))
          (setq resultado(/ (* lado 5 apotema) 2))
          (write resultado)
)