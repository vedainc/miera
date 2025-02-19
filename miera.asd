;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; miera.asd --- main asdf file

(uiop:define-package :miera-system
  (:use #:cl #:asdf))

(in-package #:miera-system)

(defsystem :miera
    :name "miera"
    :version "1.5.0"
    :author "Rommel Martínez <ebzzry@icloud.com>"
    :class :package-inferred-system
    :depends-on (#:cl-ppcre
                 #:local-time
                 #:ironclad
                 #:inferior-shell
                 #:miera/src/common
                 #:miera/src/ext
                 #:miera/src/touchpad
                 #:miera/src/general
                 #:miera/src/webcam
                 #:miera/src/apps
                 #:miera/src/unix
                 #:miera/src/mksum
                 #:miera/src/touchring
                 #:miera/src/smallcaps
                 #:miera/src/main
                 #:miera/src/driver))
