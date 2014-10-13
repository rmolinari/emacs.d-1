(add-to-list 'cabbage-bundle-dirs (expand-file-name "~/.emacs.d/bundles/"))
(add-to-list 'cabbage-bundle-dirs (expand-file-name "~/Projects/cabbage-contrib/bundles/"))
(add-to-list 'cabbage-vendor-dirs (expand-file-name "~/.emacs.d/vendor/"))
(add-to-list 'cabbage-vendor-dirs (expand-file-name "~/Projects/cabbage-contrib/vendor/"))

;; `gc-cons-threshold'

;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Garbage-Collection.html
;;
;; I have a modern machine ;)
;;
(setq gc-cons-threshold 40000000)

(setq tonini-vendor-dir
      (expand-file-name "~/.emacs.d/vendor/"))

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(defun tonini-pre-bundle-hook ()
  (setq custom-enabled-themes '(github)))

(defun tonini-load-inits ()
  ;; Load all *.el file under the private directory
  (require 'init-elpa)
  (require 'init-ido-mode)
  ;; (require 'init-smart-mode-line)
  (require 'init-display)
  (require 'init-functions)
  (require 'init-bindings))

(add-hook 'cabbage-pre-bundle-hook 'tonini-pre-bundle-hook)
(add-hook 'cabbage-initialized-hook 'tonini-load-inits)
