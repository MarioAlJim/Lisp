(defun miembroLista (lista elem)
  (if(null lista)
   nil
   (if(equalp (car lista) elem)
    t
    (miembroLista (cdr lista) elem)
    )
  )
)


(defun quitarRep (lista &optional (sinRep NIL))
  (if (not lista)
      sinRep
      (if (not (miembroLista sinRep (car lista))) 
          (quitarRep (cdr lista) (append sinRep `(,(car lista))))
          (quitarRep (cdr lista) sinRep)
      )
    )
)


;(print (quitarRep (read)))

