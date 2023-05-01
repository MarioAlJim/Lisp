(defun miembroLista (lista elem)
  (if(null lista)
   nil
   (if(equalp (car lista) elem)
    t
    (miembroLista (cdr lista) elem)
    )
  )
)



(defun quitarRep (list1)
  (if (not list1)
   '()
   (if (not (miembroLista (cdr list1) (car list1))) 
      (cons (car list1) (quitarRep (cdr list1)))
      (quitarRep (cdr list1))
    )
  )
)


;(print (quitarRep (read)))

