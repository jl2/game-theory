;;;; game-theory.asd
;;;;
;;;; Copyright (c) 2017 Jeremiah LaRocco <jeremiah.larocco@gmail.com>

(asdf:defsystem #:game-theory
  :description "Describe game-theory here"
  :author "Jeremiah LaRocco <jeremiah.larocco@gmail.com>"
  :license "ISC"
  :depends-on (#:3d-vectors
               #:3d-matrices
               #:alexandria)
  :serial t
  :components ((:file "package")
               (:file "game-theory")))

