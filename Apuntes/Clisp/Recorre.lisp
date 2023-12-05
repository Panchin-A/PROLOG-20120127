(defun recorre (lista)
    (format t "~A -> " (car lista))
        (if lista 
           (recorre (cdr lista))))

(defun recorre2 (lista)
  "Recorre una lista buscando un elemento utilizando EQL."
  (if (member lista :test #'eql)
      lista
      nil))