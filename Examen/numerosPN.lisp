(defun numerosNP2 (lista &optional (listaN '()) (listaP '()) (listaR '()))
  (if (not lista)
   (cond 
    ((> (length listaP) (length listaN)) listaP )
    ((< (length listaP) (length listaN)) listaN )
    ((= (length listaP) (length listaN)) listaR )
   )
   (cond 
    ((> (car lista) 0) (numerosNP2 (cdr lista) listaN (append listaP `(,(car lista))) listaR ) )
    ((< (car lista) 0) (numerosNP2 (cdr lista) (append listaN `(,(car lista))) listaP listaR ) )
    ((= (car lista) 0) (numerosNP2 (cdr lista) listaN listaP listaR ) )
   )
  )
)


(defun numerosNP1 (lista)
 (numerosNP2 lista '() '() lista)
)


(print (numerosNP1 (read))) 