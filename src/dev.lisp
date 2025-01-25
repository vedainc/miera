;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; dev.lisp --- nix shell stuff

(uiop:define-package #:nur/src/dev
  (:use #:cl
        #:uiop
        #:inferior-shell
        #:cl-scripting
        #:cl-launch/dispatch
        #:optima
        #:optima.ppcre
        #:nur/src/common)
  (:import-from #:marie
                #:def-
                #:def
                #:home
                #:fmt)
  (:import-from #:oof
                #:oof))

(in-package #:nur/src/dev)

(def- find-path (&rest paths)
  "Return the first path from PATHS that exists."
  (loop :for path :in paths
        :when (uiop:directory-exists-p (uiop:resolve-symlinks* path))
          :do (return path)))

(def- develop-directory ()
  "Return the template directory for the current system."
  (uiop:os-cond
   ((or (uiop:os-macosx-p)
        (uiop:os-unix-p))
    (find-path (home "etc/dev") (home ".dev")))
   (t (home "Templates/"))))

(defcommand dev (&rest args)
  (destructuring-bind (&optional output &rest command)
      args
    (cond
      ((null args)
       (oof "develop"))
      (t (let* ((cwd (uiop:getcwd))
                (directory (uiop:ensure-directory-pathname (develop-directory)))
                (cmd (or command '("bash"))))
           (when (uiop:directory-exists-p directory)
             (oof "develop"
                  (fmt "~A.#~A" directory output)
                  "--command"
                  "sh" "-c"
                  (fmt "cd ~A && ~{~A~^ ~}" cwd cmd))))))
    (success)))

(register-commands :nur/src/dev)
