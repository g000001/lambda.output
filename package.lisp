;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :lambda.output
  (:use)
  (:export :onum
           :ofloat
           :ochar
           :ostring
           :oprint
           :plural
           :pad
           :tab
           :breakline
           :output
           :outfmt))


(defpackage :lambda.output.internal
  (:use :lambda.format :cl :fiveam
        :lambda.output)
  (:shadowing-import-from :lambda.format :format :time)
  (:shadowing-import-from :lambda.format.internal 
                          :send
                          :roman-step
                          :english-print
                          :english-ordinal-print)
  (:shadowing-import-from :zl
   :^ :*nopoint
   :negative-powers-of-10f0-table
   :powers-of-10f0-table
   :powers-of-10f0-table-length
   :\\ :adjust-array-size :allocate-resource
   :array-mem :ass :assq :bit-test :caar-safe :cadddr-safe :caddr-safe
   :cadr-safe :car-safe :cddddr-safe :cdddr-safe :cddr-safe :cdr-safe
   :char-bits :character-needs-quoting-p :condition-case :copy-array-portion
   :deallocate-resource :defconst :deff :define-site-variable :defprop
   :defsubst :defun :delq :do-forever
   :ensure-no-error-clause :exploden :ferror
   :find-position-in-list :fix :fixp :flatc :flatsize :g-l-p :getl
   :inhibit-style-warnings :let-if :lsh :mem :memq :minus :multiple-value
   :multiple-value-bind :neq :nth-safe :nthcdr-safe :parse-number
   :print-fixnum :pttbl-slash :putprop :remainder :rest1 :select
   :fixnump
   :select-processor :selectq :si>princ-function
   :string-reverse-search-char :string-search :string-search-char
   :string-search-not-char :string-search-not-set :string-search-set :symeval
   :time-increment :with-stack-list :with-stack-list* :without-interrupts
   :xr-table-setup
   :≤ :≥ :≠ :get-pname :string-length :time-difference :substring
   :nsubstring :substring :string-pluralize))

