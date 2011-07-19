(column-number-mode t)
(global-linum-mode)

(show-paren-mode 1)

(dolist (hook (list
               'php-mode-hook
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'sh-mode-hook
               ))
  (add-hook hook 'company-mode))

(yas/initialize)
(yas/load-directory "~/.emacs.d/library/yasnippet/snippets")

(setq-default indicate-empty-lines t)
(setq x-select-enable-clipboard t)

(add-hook 'before-save-hook 'remove-tabs)
