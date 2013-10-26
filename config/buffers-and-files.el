(outline-minor-mode 1)

(toggle-diredp-find-file-reuse-dir t)

(defun file-anything()
  (interactive)
  (anything-other-buffer
   '(
     anything-c-source-buffers+
     anything-c-source-recentf
     anything-c-source-file-name-history
     anything-c-source-gtags-select
     anything-c-source-locate
     anything-c-source-emacs-commands
     )
   " *file-anything*"))

(defun buffer-anything()
  (interactive)
  (anything-other-buffer
   '(
     anything-c-source-occur
     anything-c-source-browse-code
     anything-c-source-register

     )
   " *buffer-anything*"))

(remove-hook 'kill-emacs-hook 'anything-c-adaptive-save-history)
(setq anything-quick-update t)

(setq anything-idle-delay 0.9)
(setq anything-input-idle-delay 0.4)
(setq anything-samewindow t)

(setq ibuffer-saved-filter-groups
      '(("Groups"
         ("Code" (or (mode . js-mode)
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

(add-hook 'comint-output-filter-functions
          'comint-strip-ctrl-m)

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))
