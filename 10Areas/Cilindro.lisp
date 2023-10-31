(
	defun cilindro ()
    (print "Dame el radio del cilindro: ")
    (setq r(read))
    (print "Dame la altura del cilindro: ")
    (setq h(read))
    (setq resultado(+ (* 2 3.14 r h) (* 2 3.14 (* r r))))
          (write resultado)
)