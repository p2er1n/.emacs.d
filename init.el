;; -*- lexical-binding: t; -*-

;;setup straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
	"straight/repos/straight.el/bootstrap.el"
	(or (bound-and-true-p straight-base-dir)
	    user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
;; instruct use-package to use straight.el default
(setq straight-use-package-by-default t)

;; setup org-roam
(use-package org-roam
  :init
  (setq org-roam-directory (file-truename "~/org-roam"))
  :config
  (org-roam-db-autosync-mode 1))

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

;; https://www.reddit.com/r/emacs/comments/4q4ixw
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)
