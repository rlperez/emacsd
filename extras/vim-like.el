;;; Emacs Bedrock
;;;
;;; Extra config: Vim emulation

;;; Usage: Append or require this file from init.el for bindings in Emacs.

;;; Contents:
;;;
;;;  - Core Packages

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   Core Packages
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Evil: vi emulation
(setopt evil-want-keybinding nil)
(use-package evil
  :ensure t
  :init
  (setopt evil-respect-visual-line-mode t)
  (setopt evil-undo-system 'undo-redo)
  ;; Enable this if you want C-u to scroll up, more like pure Vim
  ;(setq evil-want-C-u-scroll t)
  :config
  (evil-mode)
  ;; Configuring initial major mode for some modes
  (evil-set-initial-state 'vterm-mode 'emacs))

(use-package evil-collection
  :after evil
  :ensure t
  :init
  (setopt evil-collection-setup-minibuffer t)
  :config
  (evil-collection-init))
