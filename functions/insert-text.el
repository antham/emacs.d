(defun insert-gpl3 ()
  (interactive)
  (let ((content)(variables)(className)(bundleName))
    (setq copyright-date (read-string "Enter copyright date : "))
    (setq author-name (read-string "Enter contributor name : "))
    (setq indent-symbol (read-string "Enter symbol for indent : "))
    (insert-string
     (concat
      indent-symbol
      "\n"
      indent-symbol
      " Copyright (C) "
      copyright-date
      " "
      author-name
      "\n"
      indent-symbol "\n"
      indent-symbol " License\n"
      indent-symbol "\n"
      indent-symbol " This program is free software; you can redistribute it and/or modify\n"
      indent-symbol " it under the terms of the GNU General Public License as published by\n"
      indent-symbol " the Free Software Foundation; either version 3, or (at your option)\n"
      indent-symbol " any later version.\n"
      indent-symbol "\n"
      indent-symbol " This program is distributed in the hope that it will be useful,\n"
      indent-symbol " but WITHOUT ANY WARRANTY; without even the implied warranty of\n"
      indent-symbol " MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"
      indent-symbol " GNU General Public License for more details.\n"
      indent-symbol "\n"
      indent-symbol " You should have received a copy of the GNU General Public License\n"
      indent-symbol " along with this program; see the file COPYING.  If not, write to\n"
      indent-symbol " the Free Software Foundation, Inc., 51 Franklin Street, Fifth\n"
      indent-symbol " Floor, Boston, MA 02110-1301, USA.\n"
      )
     )
    )
  )