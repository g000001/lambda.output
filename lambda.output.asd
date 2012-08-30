;;;; lambda.output.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)

(defsystem :lambda.output
  :serial t
  :depends-on (:fiveam
               :lambda.format
               :zl-compat)
  :components ((:file "package")
               (:file "lambda.output")
               (:file "test")))

(defmethod perform ((o test-op) (c (eql (find-system :lambda.output))))
  (load-system :lambda.output)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :lambda.output.internal :lambda.output))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

