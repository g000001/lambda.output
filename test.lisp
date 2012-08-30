(in-package :lambda.output.internal)

(def-suite lambda.output)

(in-suite lambda.output)

(defmacro s= (x y)
  `(is (string= ,x ,y)))


(test :base
  (s= "1234"
      (output nil (onum 1234)))
  (s= (output nil
        (ostring "foo" 10
                 :right-justify t
                 :pad-char #\.))
      ".......foo")
  (s= (output nil
        (terpri)
        (pad (30) "aaa" "bbb" "ccc")
        (terpri)
        (pad (30)
          "a" "b" "c"))
      "
aaa           bbb          ccc
a              b             c")
  )



 
