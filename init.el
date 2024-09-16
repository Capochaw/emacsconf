(defun atget-xresource-color (name)
  (x-get-resource name "color"))

(global-display-line-numbers-mode)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(beacon-mode 1)
(global-hl-line-mode 1)

(setq scroll-step 1)
(setq scroll-margin 4)
(setq evil-want-C-u-scroll t)
(set-face-attribute 'mode-line nil
		    :box nil
		    :foreground (atget-xresource-color "background")
		    :background (atget-xresource-color "color0"))
(set-face-attribute 'mode-line-inactive nil
		    :box nil
		    :foreground (atget-xresource-color "color8")
		    :background (atget-xresource-color "color0"))

(use-package beacon :ensure t)
(use-package treemacs :ensure t)
(use-package treemacs-evil :ensure t)
(use-package org-fragtog :ensure t)
(use-package perfect-margin :ensure t)

(use-package org-fragtog
  :ensure t
  :hook (org-mode . org-fragtog-mode))
(use-package xresources-theme
  :ensure t
  :config
  (load-theme 'xresources t))
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(use-package evil
  :ensure t
  :config
  (evil-mode 1))
(use-package perfect-margin
  :ensure t
  :config
  (perfect-margin-mode 0))
(use-package telephone-line
  :ensure t
  :config
  (telephone-line-mode 1))
(use-package evil-org
  :ensure t
  :after (evil org)
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda ()
	      (evil-org-set-key-theme '(navigation
					insert
					textobjects
					aditional
					calendar)))))
(add-hook 'org-mode-hook 'org-fragtog-mode)

(setq initial-frame-alist '(
			    (font . "Terminus-12")
			    ))
(setq default-frame-alist '(
			    (font . "Terminus-12")
			    ))

(add-hook 'after-init-hook
	  (lambda ()
(set-face-attribute 'telephone-line-evil-emacs nil
		    :background (atget-xresource-color "color8"))
(set-face-attribute 'telephone-line-evil-insert nil
		    :background (atget-xresource-color "color7"))
(set-face-attribute 'telephone-line-evil-normal nil
		    :background (atget-xresource-color "foreground"))
(set-face-attribute 'telephone-line-evil-visual nil
		    :background (atget-xresource-color "color3"))
(set-face-attribute 'telephone-line-evil-replace nil
		    :background (atget-xresource-color "color1"))
(set-face-attribute 'telephone-line-evil-motion nil
		    :background (atget-xresource-color "color0"))
(set-face-attribute 'telephone-line-evil-operator nil
		    :background (atget-xresource-color "color7"))
(set-face-attribute 'telephone-line-evil-god nil
		    :background (atget-xresource-color "color15"))
(tab-bar-mode 1)
(setq tab-bar-close-button-show nil)
  (set-face-attribute 'tab-bar nil
                      :background (atget-xresource-color "background")
                      :foreground (atget-xresource-color "foreground"))
  (set-face-attribute 'tab-bar-tab-inactive nil
                      :background (atget-xresource-color "foreground")
                      :foreground (atget-xresource-color "background"))
  (set-face-background 'hl-line (atget-xresource-color "color0"))
	    ))


(with-eval-after-load 'org
(set-face-attribute 'org-level-1 nil
		    :foreground (atget-xresource-color "color1")
		    :height 1.2)
(set-face-attribute 'org-level-2 nil
		    :foreground (atget-xresource-color "color2")
		    :height 1.2)
(set-face-attribute 'org-level-3 nil
		    :foreground (atget-xresource-color "color3")
		    :height 1.2)
(set-face-attribute 'org-level-4 nil
		    :foreground (atget-xresource-color "color4")
		    :height 1.2)
(set-face-attribute 'org-level-5 nil
		    :foreground (atget-xresource-color "color5")
		    :height 1.2)
(set-face-attribute 'org-level-6 nil
		    :foreground (atget-xresource-color "color6")
		    :height 1.2)
(set-face-attribute 'org-level-7 nil
		    :foreground (atget-xresource-color "color9")
		    :height 1.2)
(set-face-attribute 'org-level-8 nil
		    :foreground (atget-xresource-color "color10")
		    :height 1.2)
 '(tab-bar ((t (:background (atget-xresources-color) :foreground "white"))))
 '(tab-line-highlight ((t (:background "black" :foreground "white"))))
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.3))
)
(setq org-startup-with-inline-images t)
(setq org-startup-with-latex-preview t)


(setq dashboard-banner-logo-title "Emacs (el editor superior)")
(setq dashboard-footer-messages '("
⨀ ⨁ ⨂ ⨃ ⨄ ⨅ ⨆ ⨇ ⨈ ⨉ ⨊ ⨋ ⨌ ⨍ ⨎ ⨏ ⨐ ⨑ ⨒ ⨓ ⨔ ⨕ ⨖ ⨗ ⨘ ⨙ ⨚ ⨛ ⨜ ⨝ ⨞ ⨟ ⨠
⨡ ⨢ ⨣ ⨤ ⨥ ⨦ ⨧ ⨨ ⨩ ⨪ ⨫ ⨬ ⨭ ⨮ ⨯ ⨰ ⨱ ⨲ ⨳ ⨴ ⨵ ⨶ ⨷ ⨸ ⨹ ⨺ ⨻ ⨼ ⨽ ⨾ ⨿ ⩀ ⩁ ⩂
⩃ ⩄ ⩅ ⩆ ⩇ ⩈ ⩉ ⩊ ⩋ ⩌ ⩍ ⩎ ⩏ ⩐ ⩑ ⩒ ⩓ ⩔ ⩕ ⩖ ⩗ ⩘ ⩙ ⩚ ⩛ ⩜ ⩝ ⩞ ⩟ ⩠
⩡ ⩢ ⩣ ⩤ ⩥ ⩦ ⩧ ⩨ ⩩ ⩪ ⩫ ⩬ ⩭ ⩮ ⩯ ⩰ ⩱ ⩲ ⩳ ⩴ ⩵ ⩶ ⩷ ⩸ ⩹ ⩺ ⩻ ⩼ ⩽ ⩾ ⩿
⪀ ⪁ ⪂ ⪃ ⪄ ⪅ ⪆ ⪇ ⪈ ⪉ ⪊ ⪋ ⪌ ⪍ ⪎ ⪏ ⪐ ⪑ ⪒ ⪓ ⪔ ⪕ ⪖ ⪗ ⪘ ⪙ ⪚ ⪛ ⪜ ⪝
⪞ ⪟ ⪠ ⪡ ⪢ ⪣ ⪤ ⪥ ⪦ ⪧ ⪨ ⪩ ⪪ ⪫ ⪬ ⪭ ⪮ ⪯ ⪰ ⪱ ⪲ ⪳ ⪴ ⪵ ⪶ ⪷ ⪸ ⪹ ⪺
⪻ ⪼ ⪽ ⪾ ⪿ ⫀ ⫁ ⫂ ⫃ ⫄ ⫅ ⫆ ⫇ ⫈ ⫉ ⫊ ⫋ ⫌ ⫍ ⫎ ⫏ ⫐ ⫑ ⫒ ⫓ ⫔ ⫕ ⫖ ⫗ ⫘ ⫙ ⫚ ⫛
⫝̸ ⫝ ⫞ ⫟ ⫠ ⫡ ⫢ ⫣ ⫤ ⫥ ⫦ ⫧ ⫨ ⫩ ⫪ ⫫ ⫬ ⫭ ⫮ ⫯ ⫰ ⫱ ⫲ ⫳ ⫴ ⫵ ⫶ ⫷ ⫸
⫹ ⫺ ⫻ ⫼ ⫽ ⫾ ⫿"))
(setq dashboard-startup-banner "/tmp/kunst.jpg")
(setq dashboard-center-content t)
(setq treemacs-no-png-images t)

(global-set-key (kbd "C-w") 'tab-bar-close-tab)
(global-set-key (kbd "C-t") 'tab-bar-new-tab)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-blink-duration 0.1)
 '(beacon-mode t)
 '(blink-cursor-mode nil)
 '(dashboard-image-banner-max-height 300)
 '(evil-undo-system 'undo-redo)
 '(global-display-line-numbers-mode t)
 '(org-image-actual-width 300)
 '(org-preview-latex-default-process 'imagemagick)
 '(org-startup-with-inline-images t)
 '(org-superstar-headline-bullets-list '(97 98 99 100))
 '(package-selected-packages '(treemacs-evil treemacs beacon xresources-theme dashboard))
 '(tab-bar-close-button-show nil)
 '(tab-bar-mode t)
 '(telephone-line-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#302525" :foreground "#F3E7c6"))))
 '(mode-line-highlight ((t nil)))
 '(mode-line-inactive ((t (:background "#302525" :foreground "#906B61"))))
 '(tab-bar ((t (:inherit variable-pitch :background "#F3E7c6" :foreground "#0d0b0d" :family "terminus"))))
 '(tab-bar-tab ((t (:inherit tab-bar)))))
;(atget-xresource-color "color1")
;(atget-xresource-color "color2")
;(atget-xresource-color "color3")
;(atget-xresource-color "color4")
;(atget-xresource-color "color5")
;;(atget-xresource-color "color6")
