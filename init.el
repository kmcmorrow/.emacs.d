(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(backup-directory-alist (quote (("." . "~/.saves"))))
 '(column-number-mode t)
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

; size and position
;;(set-frame-height (selected-frame) 52)
(set-frame-height (selected-frame) 34) ; laptop
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
(package-initialize)

(autoload 'company-mode "company" nil t)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 2)

(require 'yasnippet)
(yas-global-mode 1)

(require 'flymake-easy)
(require 'flymake-jshint)
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

(add-hook 'js2-mode-hook 'company-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
					(lambda ()
						(define-key js2-mode-map (kbd "<f9>") 'js2-next-error)
						(flymake-mode 1)))

;; nodejs
(setq exec-path (append exec-path '("~/.emacs.d")))
(require 'js-comint)
(setq inferior-js-program-command "node_emacs.bat")
(add-hook 'js2-mode-hook
					'(lambda ()
						 (local-set-key "\C-x\C-e" 'js-send-last-sexp)
						 (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
						 (local-set-key "\C-cb" 'js-send-buffer)
						 (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
						 (local-set-key "\C-cl" 'js-load-file-and-go)
						 ))

;; ruby
(unless (package-installed-p 'inf-ruby)
	(package-install 'inf-ruby))

(add-hook 'inf-ruby-mode-hook (lambda () (require 'company-inf-ruby)))
(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)
(add-hook 'ruby-mode-hook 'ruby-end-mode)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))


;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; tell emacs where to look
; (add-to-list 'load-path "~/.emacs.d/")
;; using multiple files
; (load "~/.emacs.d/emacs_init_1")
; (load "~/.emacs.d/emacs_init_2")
