
(setq org-agenda-files
      (mapcar
       (function (lambda (f) (concat org-directory f)))
       (list "organizer.org"            ; main work/life todos
             "inbox.org"                ; all notes go here
             "dates.org"                ; upcoming dates
             "projects.org"             ; personal project notes
             "church.org"               ; church
             "habits.org"               ; org habits
             "goals.org"
             "programming_notes.org"    ; programming notebook
             )))

(setq org-agenda-dim-blocked-tasks nil)

(setq org-agenda-sticky t)

(setq org-habit-show-all-today t)

(provide 'init-org/agenda)