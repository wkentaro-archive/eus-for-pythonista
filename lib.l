;; vim: set ft=lisp:


(defun zip (a b) (mapcar #'cons a b))


(defun dict (zipped)
  (let ((table (make-hash-table :test #'equal)))
    (dolist (pair zipped)
      (sethash (car pair) table (cdr pair))
      )
    table))
