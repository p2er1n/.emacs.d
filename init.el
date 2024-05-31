;; -*- lexical-binding: t; -*-

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

;; https://www.reddit.com/r/emacs/comments/4q4ixw
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)
