;;;; package.lisp
;;;;
;;;; Copyright (c) 2017 Jeremiah LaRocco <jeremiah.larocco@gmail.com>

(defpackage #:game-theory
  (:nicknames :gt)

  (:use #:cl #:alexandria #:3d-matrices #:3d-vectors)
  (:export #:create-game
           #:play
           #:show-game))

