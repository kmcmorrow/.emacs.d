;; ruby
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

(add-hook 'inf-ruby-mode-hook (lambda () (require 'company-inf-ruby)))
(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb$" . js2-mode))
