;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(require 'cl-lib)

(cl-defun tupper:update! (tupper f &rest args)
  (set tupper
       (apply #'funcall f (symbol-value tupper) args)))

(cl-defun tupper:reset! (tupper newval)
  (set tupper newval))

(provide 'tupper)

;;; init.el ends here
