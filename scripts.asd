;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;; scripts.asd --- main asdf file

#-ASDF3.1 (error "ASDF 3.1 or bust!")

(uiop:define-package :scripts-system
  (:use #:cl #:asdf))

(in-package #:scripts-system)

(defsystem :scripts
    :name "scripts"
    :version "1.3.0"
    :description "Common Lisp scripts"
    :license "CC0"
    :author "Rommel Martínez <rommel.martinez@valmiz.com>"
    :class :package-inferred-system
    :depends-on (#:cl-ppcre
                 #:local-time
                 #:ironclad
                 #:inferior-shell
                 #:scripts/common
                 #:scripts/ext
                 #:scripts/touchpad
                 #:scripts/general
                 #:scripts/webcam
                 #:scripts/apps
                 #:scripts/unix
                 #:scripts/mksum
                 #:scripts/touchring
                 #:scripts/smallcaps
                 #:scripts/dev
                 #:scripts/main
                 #:scripts/driver))
