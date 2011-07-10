(defun php-classical-indentation ()
  (c-set-style "bsd")
  (setq c-indent-level 2)
  (setq c-continued-statement-offset 2)
  (setq c-brace-offset -2)
  (setq c-argdecl-indent 0)
  (setq c-label-offset -2)
  (setq c-basic-offset 2)
  (setq tab-width 2)
  (setq indent-tabs-mode nil)
  (c-set-offset 'case-label '+)
  (c-set-offset 'arglist-close 'c-lineup-arglist-operators)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-cont-nonempty 'c-lineup-math)
)

(defun html-four-space ()
  (set (make-local-variable 'sgml-basic-offset) 4)
)

(defun remove-tabs ()
  (untabify (point-min) (point-max))
  (save-match-data
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward "\\s-$" nil t)
	(skip-syntax-backward "-" (save-excursion (forward-line 0) (point)))

	(save-match-data
	  (if (looking-at ".*\f")
	      (goto-char (match-end 0))))
	(delete-region (point) (match-end 0)))))
  )