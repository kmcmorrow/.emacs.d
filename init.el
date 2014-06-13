(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(backup-directory-alist (quote (("." . "~/.saves"))))
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(display-time-mode t)
 '(help-at-pt-display-when-idle (quote (flymake-overlay)) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.9)
 '(js2-allow-keywords-as-property-names nil)
 '(js2-basic-offset 2)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(flymake-errline ((t (:inherit default :background "magenta" :foreground "gray0"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "slate gray"))))
 '(font-lock-comment-face ((t (:foreground "slate gray"))))
 '(js2-error ((t (:foreground "red" :underline (:color "red" :style wave)))))
 '(js2-external-variable ((t (:background "firebrick" :foreground "orange"))))
 '(js2-warning ((t (:underline (:color "navajo white" :style wave)))))
 '(show-paren-match ((t (:background "deep sky blue")))))

;; size and position
(set-frame-height (selected-frame) 52) ; desktop
;;(set-frame-height (selected-frame) 34) ; laptop
(set-frame-position (selected-frame) 80 0)

(setq visible-bell t)
(setq inhibit-startup-screen t)
(setq default-tab-width 2)
(setq column-number-mode t)
(setq scroll-error-top-bottom t)

;(setq py-python-command "c:/Python27/python.exe")
;(setenv "PATH" (concat "~/npm/node_modules" (getenv "PATH")))

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(require 'yasnippet)
(yas-global-mode 1)

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; tell emacs where to look
; (add-to-list 'load-path "~/.emacs.d/")

;(require 'yaml-mode)
;(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(auto-fill-mode -1)

(load "~/.emacs.d/setup-company.el")
(load "~/.emacs.d/setup-js.el")
(load "~/.emacs.d/setup-ruby.el")
(load "~/.emacs.d/setup-ace-jump-mode.el")
;;(load "~/.emacs.d/setup-smartparens.el")

;; smartparens
(require 'smartparens-config)
;(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
