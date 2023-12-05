(defvar *cilindro* (lambda (r h) (+ (* 2 3.14 r h) (* 2 3.14 (* r r)))))
(defvar *circulo* (lambda (r) (* 3.14 (* r r))))
(defvar *hexagono* (lambda (lado apotema) (/ (* lado 6 apotema) 2)))
(defvar *ovalo* (lambda (v h) (* 3.14 (* v h))))
(defvar *pentagono* (lambda (lado apotema) (/ (* lado 5 apotema) 2)))
(defvar *rectangulo* (lambda (b h) (* b h)))
(defvar *rombo* (lambda (D1 D2) (/ (* D1 D2) 2)))
(defvar *trapecio* (lambda (B1 B2 H) (/ (* (+ B1 B2) H) 2)))
(defvar *triangulo* (lambda (b h) (/ (* b h) 2)))

(defun cilindro ()
    (princ "Dame el radio del cilindro: ")
    (setq r (read))
    (princ "Dame la altura del cilindro: ")
    (setq h (read))
    (format t "El area es: ~A"  (funcall *cilindro* r h))
    
)

(defun circulo ()
    (princ "Dame el radio del círculo: ")
    (setq r (read))
    (format t "El area es: ~A"  (funcall *circulo* r))
    
)

(defun hexagono ()
    (princ "Dame el lado del hexágono: ")
    (setq lado (read))
    (princ "Dame el apotema del hexágono: ")
    (setq apotema (read))
    (format t "El area es: ~A"  (funcall *hexagono* lado apotema))
    
)

(defun ovalo ()
    (princ "Dame el radio vertical del óvalo: ")
    (setq v (read))
    (princ "Dame el radio horizontal del óvalo: ")
    (setq h (read))
    (format t "El area es: ~A"  (funcall *ovalo* v h))
    
)

(defun pentagono ()
    (princ "Dame el lado del pentágono: ")
    (setq lado (read))
    (princ "Dame el apotema del pentágono: ")
    (setq apotema (read))
    (format t "El area es: ~A"  (funcall *pentagono* lado apotema))
    
)

(defun rectangulo ()
    (princ "Dame la base del rectángulo: ")
    (setq b (read))
    (princ "Dame la altura del rectángulo: ")
    (setq h (read))
    (format t "El area es: ~A"  (funcall *rectangulo* b h))
    
)

(defun rombo ()
    (princ "Dame la diagonal1 del rombo: ")
    (setq D1 (read))
    (princ "Dame la diagonal2 del rombo: ")
    (setq D2 (read))
    (format t "El area es: ~A"  (funcall *rombo* D1 D2))
    
)

(defun trapecio ()
    (princ "Dame la Base 1 del trapecio: ")
    (setq B1 (read))
    (princ "Dame la Base 2 del trapecio: ")
    (setq B2 (read))
    (princ "Dame la Altura del trapecio: ")
    (setq H (read))
    (format t "El area es: ~A"  (funcall *trapecio* B1 B2 H))
    
)

(defun triangulo ()
    (princ "Dame la base del triángulo: ")
    (setq b (read))
    (princ "Dame la altura del triángulo: ")
    (setq h (read))
    (format t "El area es: ~A"  (funcall *triangulo* b h))
    
)
