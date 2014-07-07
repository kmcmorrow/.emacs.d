;; ruby
(require 'rinari)

(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

(add-hook 'inf-ruby-mode-hook (lambda () (require 'company-inf-ruby)))
(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'ruby-tools-mode)

(add-hook 'ruby-mode-hook 'rinari-minor-mode)
(add-hook 'feature-mode-hook 'rinari-minor-mode)
(add-hook 'html-mode-hook 'rinari-minor-mode)
(add-hook 'haml-mode-hook 'rinari-minor-mode)
(add-hook 'scss-mode-hook 'rinari-minor-mode)
(add-hook 'css-mode-hook 'rinari-minor-mode)
(add-hook 'less-mode-hook 'rinari-minor-mode)
(add-hook 'web-mode-hook 'rinari-minor-mode)
(add-hook 'coffee-mode-hook 'rinari-minor-mode)
(add-hook 'yaml-mode-hook 'rinari-minor-mode)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb$" . js2-mode))
