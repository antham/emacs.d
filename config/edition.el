(column-number-mode t)
(global-linum-mode)

(show-paren-mode 1)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/library/auto-complete/auto-complete/ac-dict")

(global-auto-complete-mode t)
(setq ac-auto-start 4)

(setq-default ac-sources
	      '(ac-source-functions
	       ac-source-variables
               ac-source-symbols
               ac-source-dabbrev
	       ac-source-files-in-current-dir
	       ac-source-filename
	       ac-source-words-in-buffer
	       ac-source-words-in-all-buffer
	       ac-source-dictionary
	       ac-source-etags
	       ac-source-yasnippet
	       ))

(yas/initialize)
(yas/load-directory "~/.emacs.d/library/yasnippet/snippets")

(setq-default indicate-empty-lines t)
(setq x-select-enable-clipboard t)