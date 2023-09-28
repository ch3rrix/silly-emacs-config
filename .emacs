(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(require 'use-package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(flycheck-hl-todo evil-snipe which-key evil-surround evil-matchit company adwaita-dark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(ido-mode 1)
(setq ido-enable-flex-matching 1)

;; Basic configuration, removing unneeded stuff
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)

;; Relative line numbers
(setq display-line-numbers-type 'relative
      display-line-numbers-current-absolute t)

;; Font
(add-to-list 'default-frame-alist '(font . "Fira Code-13"))
(set-frame-font "Fira Code-13" nil t)

;; Packages
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
  (setq evil-emacs-state-modes nil)
  )

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-matchit
  :ensure t
  :config
  (global-evil-matchit-mode 1))

(use-package evil-snipe
  :ensure t
  :config
  (evil-snipe-mode +1))

(use-package company
  :ensure t
  :config
  (global-company-mode 1))

(use-package eglot
  :ensure t)

(use-package adwaita-dark-theme
  :ensure t
  :config
  (load-theme 'adwaita-dark
	      :no-confirm))

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

