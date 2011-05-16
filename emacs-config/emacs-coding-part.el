(defun flymake-php-init ()
  "Use php to check the syntax of the current file."
  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
	 (local (file-relative-name temp (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local "-l"))))

(defun coding-hook ()
  (autopair-mode)
  )

(autoload 'js2-mode "js2" nil t)
(autoload 'php-mode "php-mode.el" "Php mode." t)

(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . django-html-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'flymake-err-line-patterns
	     '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))
(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))

(add-hook 'c-mode-hook 'coding-hook)
(add-hook 'c++-mode-hook 'coding-hook)
(add-hook 'css-mode-hook 'coding-hook)
(add-hook 'lisp-mode-hook 'coding-hook)
(add-hook 'html-mode-hook 'coding-hook)
(add-hook 'js2-mode-hook 'coding-hook)
(add-hook 'perl-mode-hook 'coding-hook)
(add-hook 'php-mode-hook 'coding-hook)
(add-hook 'python-mode-hook 'coding-hook)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'yaml-mode-hook 'coding-hook)

(add-hook 'c-mode-hook (lambda () (c-set-style "user")))
(add-hook 'c++-mode-hook (lambda () (c-set-style "user")))
(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))