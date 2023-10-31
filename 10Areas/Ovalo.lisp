(
	defun ovalo ()
	      (print "Dame el radio vertical del ovalo: ")
          (setq v(read))
		  (print "Dame el radio horizontal del ovalo: ")
          (setq h(read))
          (setq resultado(* 3.14 (* v h)))
          (write resultado)	  
)