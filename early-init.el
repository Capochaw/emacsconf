(defun atget-xresource-color (name)
  (x-get-resource name "color"))

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(setq gc-cons-threshold 63000000
      gc-cons-percentage 0.6)
