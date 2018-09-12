(require 'org-ref)
(require 'org-capture)
(require 'interleave)

(setq reftex-default-bibliography '("~/Notes/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Notes/notes.org"
      org-ref-default-bibliography '("~/Notes/references.bib")
      org-ref-pdf-directory "~/Dropbox/Library/")


(setq bibtex-completion-bibliography "~/Notes/references.bib"
      bibtex-completion-library-path "~/Dropbox/Library/"
      bibtex-completion-notes-path "~/Notes/helm-bibtex-notes")

;; open pdf with system pdf viewer (works on mac)
(setq bibtex-completion-pdf-open-function
  (lambda (fpath)
    (start-process "open" "*open*" "open" fpath)))

(setq org-ref-notes-directory "~/Notes/references/notes"
      org-ref-bibliography-notes "~/Notes/articles.org"
      org-ref-default-bibliography '("~/Notes/articles.bib")
      org-ref-pdf-directory "~/Notes/References/pdfs/")

(setq helm-bibtex-bibliography "~/Notes/index.bib" ;; where your references are stored
      helm-bibtex-library-path "~/Notes/References/pdfs/" ;; where your pdfs etc are stored
      helm-bibtex-notes-path "~/Notes/index.org" ;; where your notes are stored
      bibtex-completion-bibliography "~/Notes/index.bib" ;; writing completion
      bibtex-completion-notes-path "~/Notes/index.org")

(provide 'init-org/papers)
