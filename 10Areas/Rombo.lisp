(
	defun rombo ()     
	(print "Dame la diagonal1 del rombo: ")
    (setq D1(read))
	(print "Dame la diagonal2 del rombo: ")
    (setq D2(read))
    (setq resultado(/ (* D1 D2) 2))
          (write resultado)
)