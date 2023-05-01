(defun Principal (listP &optional (listL NIL) (listA NIL))
 (if (not ListP)
     (Final (append listL (list listA)))
     (if (not listA)
         (Principal (cdr listP) listL (append listA `(,(car listP))))
         (if (< (car (last listA)) (car listP))
             (Principal (cdr listP) listL (append listA `(,(car listP))))
             (Principal (cdr listP) (append listL (list listA)) (append '() `(,(car listP))))
         )
     )
  )
)


(defun Final (listL)
 (setq longitud (reduce #'max (mapcar #'length listL)))
 (filtrar longitud listL)
)


(defun FiltrarImprimir (longitud listL &optional (listN ))
  (if (not listL); caso base
      (if (= 1 (length listN))
          (car listN)
          listN
      )
      (if (= longitud (length (car listL))); si al aplicar la funcion al car de la lista da T
          (filtrar longitud (cdr listL) (append listN `(,(car listL)))); T
          (filtrar longitud (cdr listL) listN); NIL
      )
  )
)
