(defun Principal3 (listP &optional (listFinal '()) (listCdr '()) (listCar '()))
  (if (equal (car listP) NIL)
    listFinal
    (if (equal (cdr listP) NIL)
      (Principal3 (append listCdr `(,(cdar listP))) (append listFinal (list (append listCar `(,(caar listP))))))
      (Principal3 (cdr listP) listFinal (append listCdr `(,(cdar listP))) (append listCar `(,(caar listP))))
    )
  )
)

(print (Principal3 (read)))