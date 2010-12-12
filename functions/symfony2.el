(defun s2-build-model-buffers()
  (interactive)
  (let ((content)(variables)(className)(bundleName))
    (setq className (read-string "Enter a class name : "))
    (setq bundleName (read-string "Enter a bundle name : "))

    (setq content (buffer-string))
    (setq variables (s2-build-variables (split-string content "\n")))
    (s2-create-model-php "skeleton-model-php" variables className bundleName)
    (s2-create-model-xml "skeleton-model-xml" variables className bundleName)
    (s2-create-xliff "skeleton-trad-xliff" variables)
    )
  )

(defun s2-build-variables(variables)
  
  (let ((list ())(lists ())(majVar)(dashVar)(variable)(i 0)(j 1))
    (while (< i (length variables))
      (setq variable (split-string (nth i variables) " "))

      (setq majVar (nth 0 variable))
      (setq dashVar (nth 0 variable))

      (setq j 1)
      (while (< j (length variable))
	(setq majVar (concat majVar (upcase-initials (nth j variable))))
	(setq dashVar (concat dashVar (concat "_" (nth j variable))))
	(setq j (+ j 1))
	)
      
      (setq list (cons dashVar list))
      (setq list (cons majVar list))
      (setq lists (cons list lists))
      (setq list ())
      (setq i (+ i 1))
      )

    (reverse lists)
    )
  )

(defun s2-create-model-php(bufferName variables className bundleName)
  (get-buffer-create bufferName)
  (set-buffer bufferName)
  (erase-buffer)

  (let ((variable)(i 0))

    (insert (concat "<?php" "\n\n" "namespace Application\\" bundleName "Bundle\\Entity;" "\n\n" "class " className "{\n\n"))

    (while (< i (length variables))

      (insert (concat "protected $" (nth 0 (nth i variables)) ";\n"))
      (setq i (+ i 1))
      )

    (newline)

    (setq i 0)

    (while (< i (length variables))
      (setq variable (nth 0 (nth i variables)))

      (insert (concat "public function set" (upcase-initials variable) "($" variable "){\n$this->" variable " = $" variable ";\n}\n"))
      (insert (concat "public function get" (upcase-initials variable) "(){\nreturn $this->" variable ";\n}\n\n"))
      (setq i (+ i 1))
      )

    (insert "}")
    )
  )

(defun s2-create-model-xml(bufferName variables className bundleName)
  (get-buffer-create bufferName)
  (set-buffer bufferName)
  (erase-buffer)
  (xml-mode)

  (let ((variable)(i 0))
    (insert "<doctrine-mapping xmlns=\"http://doctrine-project.org/schemas/orm/doctrine-mapping\"
            xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"
            xsi:schemaLocation=\"http://doctrine-project.org/schemas/orm/doctrine-mapping
                          http://doctrine-project.org/schemas/orm/doctrine-mapping.xsd\">\n")

    (insert (concat "\n<entity name=\"Application\\" bundleName "Bundle\\Entity\\" className "\" table=\"\">\n"))
    (insert "<id name=\"id\" type=\"integer\" column=\"id\">
  <generator strategy=\"IDENTITY\"/>
  </id>\n\n")

    (while (< i (length variables))
      (setq variable (nth i variables))
      (insert (concat "<field name=\"" (nth 0 variable) "\" column=\"" (nth 1 variable) "\" type=\"#change-type#\" length=\"#change-length#\" />\n"))
      (setq i (+ i 1))
      )
    (insert "</entity>\n\n")
    (insert "</doctrine-mapping>")
    )

  (indent-region (point-min)(point-max))
  )

(defun s2-create-xliff(bufferName variables)
  (get-buffer-create bufferName)
  (set-buffer bufferName)
  (xml-mode)
  (insert "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>
<!DOCTYPE xliff PUBLIC \"-//XLIFF//DTD XLIFF//EN\" \"http://www.oasis-open.org/committees/xliff/documents/xliff.dtd\" >
<xliff version=\"1.0\">
  <file original=\"global\" source-language=\"en\" datatype=\"plaintext\">
    <header />
    <body>")

  (insert "
    </body>
  </file>
</xliff>")
  )

(defun s2-crud()
  (interactive)
  (let ((bundle-name)(actions)(action)(object-name)(namespace))

    (setq bundle-name (read-string "Enter a bundle name : "))
    (setq object-name (read-string "Enter an object name : "))
    (setq namespace (read-string "Enter a namespace : "))

    (setq actions '("index" "view" "new" "create" "edit" "update" "delete"))

    (insert "<?php")
    (newline 2)
    (insert (concat "namespace " namespace ";"))
    (newline 2)
    (insert (concat "class " bundle-name "Bundle{"))
    (newline)

    (while actions
      (newline-and-indent)
      (setq action (pop actions))
      (insert (concat "public function " action "Action(){"))
      (newline)

      (if (or (string= "view" action) (or (string= "edit" action) (string= "delete" action)))
	  ((lambda()
	     (insert (concat "if(!$" object-name "){"))
	     (newline-and-indent)
	     (insert "throw new NotFoundException();")
	     (newline)
	     (insert "}")
	     (newline 2)
	     ))
	)

      (if (or (string= "delete" action) (or (string= "create" action) (string= "update" action)))
	  ((lambda()
		  (insert "return $this->redirect();")))
	    
	
	((lambda()
		(insert (concat "return $this->render(\"" bundle-name "Bundle:Frontend:" action "\", array('" object-name "' => $" object-name "));"))
		))
	  
	)

      (newline)
      (insert "}")
      (newline)

      )

    (insert "}")
    )
  )

(global-set-key (kbd "C-c u c") 's2-crud)
(global-set-key (kbd "C-c u m") 's2-build-model-buffers)

(provide 'symfony2)