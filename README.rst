======================
Euslisp for Pythonista
======================


map
===

**Python**

::

  lst = [1, 2, 3]
  map(lambda x: x+1, lst)
  > [2, 3, 4]

**Euslisp**

::

  lst = (list 1 2 3)
  (mapcar #'(lambda (x) (+ x 1)) lst)
  > (2 3 4)


zip
===

**Python**

::

  lst1 = ["a", "b", "c"]
  lst2 = [1, 2, 3]
  zip(lst1, lst2)
  > [("a", 1), ("b", 2), ("c", 3)]


**Euslisp**

::

  (setq lst1 (list "a" "b" "c"))
  (setq lst2 (list 1 2 3))
  (mapcar #'cons lst1 lst2)


dict
====

**Python**

::

  zipped = [("a", 1), ("b", 2), ("c", 3)]
  dict(zipped)
  > {'a': 1, 'b': 2, 'c': 3}


**Euslisp**

::

  (setq zipped (("a" . 1) ("b" . 2) ("c" . 3)))
  (setq table (make-hash-table :test #'equal))
  (dolist (pair zipped)
    (sethash (car pair) table (cdr pair))
    )
  (send table :list)
  > (("a" . 1) ("b" . 2) ("c" . 3)))
  (gethash "a")
  > 1

