(defun miembro (elemento lista &optional (contiene NIL))
  (if (not lista)
   contiene
   (if (= (car lista) elemento)
      (imprimir)
      (miembro elemento (cdr lista))
   )
  )    
)

(defun imprimir ()
T
)


(print (miembro (read) (read)) )