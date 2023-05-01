(defun Aplanadora (listP &optional (listFinal '()))
  (if (equal (car listP) NIL)
    listFinal
    (if (atom (car listP))
    (Aplanadora (cdr listP) (append listFinal `(,(car listP))))
    (Aplanadora (cdr listP) (append listFinal (car listP)))
   )
  )
)

;(print (Aplanadora (read)))