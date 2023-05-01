(defun anidaListas (list1)
  (setq list2 '(1 2 3))
  (list list2 list1)
)


(defun anidarListas2 (list1)
  (list '(1 2 3) list1)
)

(defun anidarListas2 (list1)
  '((1 2 3), list1)
)

(print (anidaListas (read)))