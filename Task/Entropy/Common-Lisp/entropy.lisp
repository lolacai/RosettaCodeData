(defun entropy(input-string)
    (let ((frequency-table (make-hash-table :test 'equal))
          (entropy 0))
         (map 'nil #'(lambda(c) (setf (gethash c frequency-table) (if (gethash c frequency-table) (+ (gethash c frequency-table) 1) 1))) (coerce input-string 'list))
         (maphash #'(lambda(k v) (setf entropy (+ entropy (* -1 (/ v (length input-string)) (log (/ v (length input-string)) 2))))) frequency-table)
         entropy))
