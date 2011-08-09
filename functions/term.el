(defun term-toggle-mode ()
  "Toggle between term-char-mode and term-line-mode."
  (interactive)
  (if (term-in-line-mode) (term-char-mode) (term-line-mode)))
