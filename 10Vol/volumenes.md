;cilindro
(defun cilindro ()
    (print "Dame el radio del cilindro: ")
    (setq r(read))
    (print "Dame la altura del cilindro: ")
    (setq h(read))
    (let ((pi 3.14159265359)))
    (setq resultado((* pi (* r r) h)))
          (write resultado)
)

;Descripcion
;Primero se le pide al usuario que introdusca el valor del radio del cilindro que se guarda con un setq en "r", despues se e pide denuevo un dato el cual es la altura del cilindro que se guarda en "h", teniendo ya los dos valores, le asignamos con un let a pi el valor de pi, teniendo ya todos los datos se ejecuta el siguiente setq para asignar a "resultado" el resultado de la formula ((* pi (* r r) h)).

;cono
(defun cono ()
  (print "Dame la altura del cono: ")
  (setq h (read))
  (print "Dame el radio de la base del cono: ")
  (setq r (read))
  (setq resultado (/ (* 3.14159265359 (* r r) h) 3.0))
(write resultado)
)

;Descripcion
;Primero se le pide al usuario con un mensaje print que introdusca el valor de la altura del cono el cual se asigna a "h", pasando con el siguiente mensaje que pide el radio de la base que guarda el dato en "r", ya teniendo los dos datos guardados se pasa al ultimo setq que guarda el resultado de la formula (/ (* 3.14159265359 (* r r) h) 3.0) en "resultado" para despues mostrarlo en pantalla.

;cubo
(defun Cubo ()
    (print "Dame la longitud de un lado del cubo: ")
    (setq l (read))
    (setq resultado (* l l l))
    (write resultado)
)

;Descripcion
;Primero se le pide al usuario que le escriba el lado del cubo, el cual se guarda en "l" teniendo ya ese dato se pasa al ultimo setq donde se ejecuta la operacion (* l l l) guardando el resultado en "resultado" para posteriormente mostrarlo en pantalla.

;Esfera
(defun Esfera ()
    (print "Dame el radio de la esfera: ")
    (setq r (read))
    (setq resultado (* (/ 4 3) 3.14 (* r r r)))
    (write resultado)
)

;Descripcion
;Primero se le pide al usuario que ingrese el radio de la esfera el cual se guarda en "r", teniendo eso se pasa al ultimo setq que ejecuta la formula (* (/ 4 3) 3.14 (* r r r)) que guada su resultado en "resultado", para por ultimo mostrarlo en pantalla.

;Hexaedro
(defun Hexaedro ()
    (print "Dame la longitud de un lado del hexaedro: ")
    (setq l (read))
    (setq resultado (* l l l))
    (write resultado)
)

;Descripcion
;Primero se le pide al usuario que ingrese la longitud de un lado del hexaedro el cual se guarda en "l" para posteriormente en el setq ejecutar la formula (* l l l) y guardando a su ves el resultado en "resultado" para al final con el write mostrar el resultado en pantalla.

;Piramide
(defun Piramide ()
    (print "Dame el area de la base: ")
    (setq areabase (read))
    (print "Dame la altura de la piramide: ")
    (setq altura (read))
    (setq resultado (* (/ 1 3) areabase altura))
    (write resultado)
)

;Descripcion
;primero se le pide al usuario que ingrese el area de la base de la pidamide la cual se guarda en "areabase", despues pasa al siguiente print el cual pide la altura de la piramide la cual se guarda en "altura", teniendo ya esos dos datos se pasa al ultimo setq en el que se guarda el resultado de la formula (* (/ 1 3) areabase altura) en "resultado" para posteriormente mostrar el resultado con un write en pantalla.

;Prisma rectangular
(defun PrismaRectangular()
    (print "Dame el ancho del prisma: ")
    (setq a (read))
    (print "Dame la base del prisma: ")
    (setq b (read))
    (print "Dame la altura del prisma: ")
    (setq h (read))
    (setq resultado (* a b h))
     (write resultado)
)

;Descripcion
;primero se le pide al usuario que ingrese el ancho del prisma el cual se guarda en "a", despues pide la base del prisma la cual se guarda en "b" para por ultimo pedir la altura y guardarla en "h", teniendo ya los 3 valores se pasa al ultimo setq que ejecuta la formula (* a b h) que guarda el resultado en "resultado" para posteriormente con un write mostrarlo en pantalla.

;Romboide
(defun romboide ()
  (print "Dame la longitud de la base mayor del romboide: ")
  (setq bmayor (read))
  (print "Dame la longitud de la base menor del romboide: ")
  (setq bmenor (read))
  (print "Dame la altura del romboide: ")
  (setq h (read))
  (setq resultado (* bmayor bmenor h))
  (write resultado)
)

;Descripcion
;Primero pide al usuario la longitud de la base mayor del romboide la cual se guardaa en "bmayor", para despues pedir la base menor del romboide y guardarlo en "bmenor" para por ultimo pedir la altura del romboide para guardarlo en "h" y por ultimo llegar el setq de resultado que ejecuta la formula (* bmayor bmenor h) y guarda "resultado" para gmostrar el resultado en pantalla.

;Trapecio
(defun calcular-volumen-trapecio ()
(print  "Dame la longitud de la base superior del trapecio: ")
(setq bsuperior (read))
(print  "Dame la longitud de la base inferior del trapecio: ")
(setq binferior (read))
(print  "Dame la altura del trapecio: ")
(setq h (read))
(print  "Dame la longitud de los lados del trapecio: ")
(setq l (read))
(setq resultado (/ (* (+ bsuperior binferior) h l) 2))
(write resultado)
)

;Descripcion
;Primero le pide al usuario la longitud de la base superior del trapecio que se guarda en "bsuperior", despues pide la longitud de la base inferior del trapecio que se guarda en "binferior", despues pide la altura del trapecio que se guarda en "h" para por ultimo pedir la longitud de un lado del trapecio para despues ejecutar el ultimo setq que guarda el resultado de la formula (/ (* (+ bsuperior binferior) h l) 2)  en "resultado" para posteriormente mostrar en pantalla el resultado.

;Tronco de cono
(defun troncodecono ()
(print "Dame la altura del tronco de cono: ")
(setq altura (read))
(print "Dame el radio mayor del tronco de cono: ")
(setq rMayor (read))
(print "Dame el radio menor del tronco de cono: ")
(setq rMenor (read))
(setq resultado (/ (* pi altura (+ (* rMayor rMayor) (* rMayor rMenor) (* rMenor rMenor))) 3))
(write resultado)
)

;Descripcion
;Primero pide al usuario  la altura del tronco del cono para guardarla en "altura", despues pide el radio mayor del tronco del cono que guarda en "rMayor", despues pide el radio menor del tronco del cono que se guarda en "rMenor" para por ultimo en el setq resultado ejecutar la formula (/ (* 3.14 altura (+ (* rMayor rMayor) (* rMayor rMenor) (* rMenor rMenor))) 3) y guardar el resultado en "resultado" para por ultimo con un write mostrar en pantalla el resultado

