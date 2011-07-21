(toggle-dired-find-file-reuse-dir t)

(setq password-cache-expiry nil)

(defun base-anything()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers+
     anything-c-source-occur
     anything-c-source-recentf
     anything-c-source-locate
     )
   " *base-anything*"))

(remove-hook 'kill-emacs-hook 'anything-c-adaptive-save-history)
(setq anything-quick-update t)

(setq anything-idle-delay 0.9)
(setq anything-input-idle-delay 0.4)
(setq anything-samewindow t)

(ido-mode t)

(setq ibuffer-saved-filter-groups
      '(("Groups"
         ("Code" (or (mode . js2-mode)
                     (mode . js-mode)
		     (mode . html-mode)
		     (mode . css-mode)
		     (mode . c++-mode)
                     (mode . c-mode)
                     (mode . emacs-lisp-mode)
		     (mode . lisp-mode)
		     (mode . perl-mode)
		     (mode . php-mode)
		     (mode . python-mode)
		     (mode . yaml-mode)))
	 
         ("W3m" (mode . w3m-mode))
         ("Terminal" (mode . term-mode))
         ("Search" (or (mode . ack-mode)
                       (mode . grep-mode)))
         ("Dired" (or (mode . dired-mode)))
         ("Emacs" (or
                   (name . "^\\*scratch\\*$")
                   (name . "^\\*Messages\\*$")))
	 )
	))

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "Groups")))

(setq ibuffer-expert t)

(global-undo-tree-mode)