(add-to-list 'load-path "/usr/share/go13/misc/emacs")
(require 'go-mode-load)
(add-hook 'before-save-hook 'gofmt-before-save)
(setq make-backup-files nil)

(add-to-list 'load-path "/disk/a/home/andrew/.emacs.d")
(require 'miso-mode-load)

(add-to-list 'load-path "~/.emacs.d/autocomplete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete/ac-dict")
(ac-config-default)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

(require 'go-autocomplete)
(require 'auto-complete-config)

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
