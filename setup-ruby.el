;; ruby
(projectile-rails-global-mode)

(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

(add-hook 'inf-ruby-mode-hook (lambda () (require 'company-inf-ruby)))
(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)

(define-key projectile-rails-mode-map
  (kbd "C-c r")
  'projectile-rails-command-map)

(add-hook 'web-mode-hook 'ruby-tools-mode)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb$" . js2-mode))
(add-to-list 'auto-mode-alist '(".axlsx$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Cheffile$" . ruby-mode))
