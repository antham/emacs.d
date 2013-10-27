(outline-minor-mode 1)

(toggle-diredp-find-file-reuse-dir t)

(defun file-helm()
  (interactive)
  (require 'helm-files)
  (require 'helm-gtags)
  (helm-other-buffer
   '(
     helm-source-buffers-list
     helm-source-recentf
     helm-source-file-name-history
     helm-source-gtags-select
     helm-source-locate
     )
   " *file-helm*"))

(defun buffer-helm()
  (interactive)
  (require 'helm-ring)
  (require 'helm-regexp)
  (helm-other-buffer
   '(
     helm-source-moccur
     helm-source-kill-ring
     )
   " *buffer-helm*"))



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

