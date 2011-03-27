(column-number-mode t)
(global-linum-mode)

(require 'show-wspace)

(require 'browse-kill-ring)
(require 'browse-kill-ring+)

(require 'autopair)
(autopair-global-mode 1)
(show-paren-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(setq-default ac-sources 
	      (list ac-source-filename
		    ac-source-functions
		    ac-source-variables
		    ac-source-symbols
		    ac-source-abbrev
		    ac-source-files-in-current-dir
		    ac-source-filename
		    ac-source-words-in-buffer
		    ac-source-words-in-all-buffer
		    ac-source-dictionary
		    ))

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

(set-default 'indicate-empty-lines t)
(setq x-select-enable-clipboard t)
