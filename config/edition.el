
(add-to-list 'ac-modes 'shell-mode)

(setq-default ac-sources
              '(ac-source-functions
               ac-source-variables
               ac-source-symbols
               ac-source-files-in-current-dir
               ac-source-filename
               ac-source-words-in-buffer
               ac-source-words-in-all-buffer
               ac-source-dictionary
               ac-source-gtags
               ))

(add-hook 'before-save-hook 'remove-tabs)
