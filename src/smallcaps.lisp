;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; smallcaps.lisp --- return smallcaps version of text

(uiop:define-package #:ebzzry-scripts/src/smallcaps
  (:use #:cl
        #:inferior-shell
        #:cl-scripting
        #:optima
        #:optima.ppcre
        #:marie
        #:ebzzry-scripts/src/common))

(in-package #:ebzzry-scripts/src/smallcaps)

(defvar *smallcaps-alist*
  '((#\A . "ᴀ")
    (#\B . "ʙ")
    (#\C . "ᴄ")
    (#\Ĉ . "ᴄx")
    (#\D . "ᴅ")
    (#\E . "ᴇ")
    (#\F . "ғ")
    (#\G . "ɢ")
    (#\Ĝ . "ɢx")
    (#\H . "ʜ")
    (#\Ĥ . "ʜx")
    (#\I . "ɪ")
    (#\J . "ᴊ")
    (#\Ĵ . "ᴊx")
    (#\K . "ᴋ")
    (#\L . "ʟ")
    (#\M . "ᴍ")
    (#\N . "ɴ")
    (#\Ñ . "ɴ̃")
    (#\O . "ᴏ")
    (#\P . "ᴘ")
    (#\Q . "ǫ")
    (#\R . "ʀ")
    (#\S . "ꜱ")
    (#\Ŝ . "sx")
    (#\T . "ᴛ")
    (#\U . "ᴜ")
    (#\Ŭ . "ᴜx")
    (#\V . "ᴠ")
    (#\W . "ᴡ")
    (#\X . "x")    ;x
    (#\Y . "ʏ")
    (#\Z . "ᴢ")))

(defcommand smallcaps (&optional (text (uiop:slurp-stream-line *standard-input*)))
  "Output the smallcaps version of TEXT."
  (flet ((fn (base)
           (let ((value (cdr (assoc base *smallcaps-alist* :test #'char-equal))))
             (or value base))))
    (loop :for char :across text :do (format t "~A" (fn char)))
    (success)))

(register-commands :ebzzry-scripts/src/smallcaps)
