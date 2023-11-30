```
(
	defun rombo ()     
	(print "Dame la diagonal1 del rombo: ")
    (setq D1(read))
	(print "Dame la diagonal2 del rombo: ")
    (setq D2(read))
    (setq resultado(/ (* D1 D2) 2))
          (write resultado)
)
```
# DESCRIPCION
## Primero se declara la funcion "rombo", posteriormente se pide al usuario el valor de la primera diagonal del rombo "D1" y despues se pide la segunda diagonal del rombo "D2", teniendo esos dos valores se ejecuta la formula del area del rombo que primero multiplica la diagonal 1 con la diagonal 2 para despues dividirlo entre 2 obteniendo el valor del area del rombo.