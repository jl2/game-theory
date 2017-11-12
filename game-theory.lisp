;;;; game-theory.lisp
;;;;
;;;; Copyright (c) 2017 Jeremiah LaRocco <jeremiah.larocco@gmail.com>

(in-package #:game-theory)

(defclass 2-player-game ()
  ((payoffs :initarg :payoffs)))

(defun create-game (first-player second-player)
  (when (or (/= (mcols first-player) (mcols second-player))
            (/= (mrows first-player) (mrows second-player)))
    (error "first-player and second-player must have the same dimensions."))
  (make-instance '2-player-game :payoffs (make-array 2 :initial-contents (list first-player second-player))))

(defun play (game times)
  (let ((p1-score 0)
        (p2-score 0))
    (with-slots (payoffs) game
      (dotimes (i times)
        (let ((p1-choice (random (mcols (aref payoffs 0))))
              (p2-choice (random (mrows (aref payoffs 1)))))
          (incf p1-score (mcref (aref payoffs 0) p1-choice p2-choice))
          (incf p2-score (mcref (aref payoffs 1) p1-choice p2-choice)))))
    (values p1-score p2-score)))
          

(defun show-game (game)
  (with-slots (payoffs) game
    (let ((p1 (aref payoffs 0))
          (p2 (aref payoffs 1)))
    (dotimes (i (mcols p1))
      (dotimes (j (mrows p2))
        (format t "(~4f ~4f) " (mcref p1 i j) (mcref p2 i j)))
      (format t "~%")))))
