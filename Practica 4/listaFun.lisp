(defun filtrarLista (funcion lista)
  (if(not lista)
   '()
    (if (funcall funcion (car lista))
        (cons (car lista) (filtrarLista funcion (cdr lista)))
        (filtrarLista funcion (cdr lista))
        )
  )
)


(print (filtrarLista (eval (read)) (read)))