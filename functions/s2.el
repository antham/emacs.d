(defun s2-crud()
  (interactive)
  (let ((bundle-name)(actions)(action)(object-name)(namespace))

    (setq bundle-name (read-string "Enter a bundle name : "))
    (setq object-name (read-string "Enter an object name : "))
    (setq namespace (read-string "Enter a namespace : "))

    (setq actions '("index" "view" "new" "create" "edit" "update" "delete"))

    (insert "<?php")
    (newline)(newline)
    (insert (concat "namespace " namespace ";"))
    (newline)(newline)
    (insert (concat "class " bundle-name "Bundle{"))
    (newline)

    (while actions
      (newline-and-indent)
      (setq action (pop actions))
      (insert (concat "public function " action "Action(){"))
      (newline)
      (newline-and-indent)

      (if (or (string= "view" action) (or (string= "edit" action) (string= "delete" action)))
	  ((lambda()
	     (insert (concat "if(!$" object-name "){"))
	     (newline-and-indent)
	     (insert "throw new NotFoundException();")
	     (newline)
	     (insert "}")
	     (newline)(newline)
	     ))
	)

      (if (or (string= "delete" action) (or (string= "create" action) (string= "update" action)))
	  (lambda(
		  (insert "return $this->redirect();"))
	    )
	
	(lambda(
		(insert (concat "return $this->render(\"" bundle-name "Bundle:Frontend:" action "\", array('" object-name "' => $" object-name "));"))
		)
	  )
	)

      (newline)
      (insert "}")
      (newline)

      )

    (insert "}")
    )
  )