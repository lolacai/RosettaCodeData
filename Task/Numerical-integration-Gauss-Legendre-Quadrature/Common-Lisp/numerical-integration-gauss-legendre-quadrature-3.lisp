(int #'(lambda (x) (expt x 3)) 5 0 1)
0.24999999999999997d0

(int #'(lambda (x) (/ 1 x)) 5 1 100)
4.059147508941519d0

(int #'(lambda (x) x) 5 0 5000)
1.25d7

(int #'(lambda (x) x) 5 0 6000)
1.8000000000000004d7