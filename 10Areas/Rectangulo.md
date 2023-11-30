```
(
	defun rectangulo ()     
	(print "Dame la base del rectangulo: ")
    (setq b(read))
	(print "Dame la altura del rectangulo: ")
    (setq h(read))
    (setq resultado(* b h))
          (write resultado)
)
```
# DESCRIPCION
## Primero se declara la funcion "rectangulo", posteriormente se le pide al usuario la base guardandolo en "b", despues se le pide el valor de la altura guardandolo en "h", teniendo ya estos dos parametros se ejecuta la operacion base por altura la cual nos arroja el resultado del area.