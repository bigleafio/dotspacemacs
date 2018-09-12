(require 'org-mime)
(require 'org-id)
(require 'org-clock)
(require 'org-habit)
(require 'org-mouse)
(require 'org-protocol)

(setq org-id-link-to-org-use-id 'use-existing)

(setq org-startup-indented t)

(setq org-directory "~/Dropbox/Notes/")

(setq org-default-notes-file (concat org-directory "organizer.org"))

(setq org-imenu-depth 5)

(setq org-list-allow-alphabetical t)

;; org-mode hook
(defun jsg/org-mode-hook ()
  "My org-mode-hook function."
  (auto-fill-mode 1)

  (dolist (face '(org-level-1
                  org-level-2
                  org-level-3
                  org-level-4
                  org-level-5))
    (set-face-attribute face nil :weight 'semi-bold :height 1.0))

  )

(add-hook 'org-mode-hook 'jsg/org-mode-hook)

(require 'init-org/contacts)
(require 'init-org/agenda)
(require 'init-org/shortcuts)
(require 'init-org/todo)
;;(require 'init-org/code)
(require 'init-org/captures)
(require 'init-org/mobile)
;;(require 'init-org/papers)
;;(require 'init-org/org-manage)
;;(require 'init-org/org-collector)
(provide 'init-org)
