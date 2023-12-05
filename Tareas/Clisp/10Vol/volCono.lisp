(defun cono ()
  (print "Dame la altura del cono: ")
  (setq h (read))
  (print "Dame el radio de la base del cono: ")
  (setq r (read))
  (setq resultado (/ (* 3.14159265359 (* r r) h) 3.0))
(write resultado)
)


