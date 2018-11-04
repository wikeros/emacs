;;automaattisesti lisätyt
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-use-speed-commands t)
 '(package-selected-packages (quote (iedit ergoemacs-mode try use-package rjsx-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Omat jutut
;;
;; Alustus

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-set-key(kbd "M-o")'other-window)
(global-visual-line-mode t)

;;Paketit

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

;; Org-mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1 )))

;; Bufferit

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;; Automaattinen täydennys

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; iedit eli monta kursoria

(use-package iedit
  :ensure t)

;; LaTeX-mode




