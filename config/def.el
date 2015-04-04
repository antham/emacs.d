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
     helm-source-kill-ring
     )
   " *buffer-helm*"))

(defun init-ws()
  (global-ws-trim-mode t)
  (setq ws-trim-method-hook '(ws-trim-trailing ws-trim-tabs ws-trim-leading-tabs))
  )

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))

(init-ws)

(outline-minor-mode 1)

(turn-on-xclip)

(toggle-diredp-find-file-reuse-dir t)

(add-hook 'comint-output-filter-functions
          'comint-strip-ctrl-m)

(add-hook 'after-init-hook 'global-flycheck-mode)
(add-hook 'after-init-hook 'global-company-mode)
