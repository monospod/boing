(asdf:defsystem "boing"
  :version "0.0.1"
  :author "Monospod"
  :depends-on (trivial-gamekit)
  :pathname "src"
  :components ((:file "packages")
               (:file "main"))
  :description "Common Lisp implementation of Boing.")
