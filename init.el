;;automaattisesti lisätyt
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ergoemacs-mode try use-package rjsx-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Omat jutut

(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1 )))

(global-set-key(kbd "M-o")'other-window)

(tool-bar-mode -1)
(menu-bar-mode -1)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(global-visual-line-mode t)

;;(use-package which-key
;;  :ensure t
;;  :config (which-key-mode))



