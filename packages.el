;;; packages.el --- epubx layer packages file for Spacemacs.
;;
;;
;; Author: Trung-Hieu Tran <hieutt.cse@gmail.com>
;; URL: https://github.com/hieuttcse/spacemacs_epubx_layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst epubx-packages
  '(nov))


(defun epubx/init-nov ()
  (use-package nov
    :mode (("\\.epub\\'"  . nov-mode))
    :defer t
    :config
    (progn
      (spacemacs|use-package-add-hook nov
        :post-config
        (spacemacs/set-leader-keys-for-major-mode 'nov-mode
          ;; Compile
          "t" 'nov-goto-toc ;; goto table of content
          "m" 'nov-display-metadata ;; show metadata
          "n" 'nov-next-document ;; next chapter
          "p" 'nov-previous-document ;; previous chapter
          "V" 'nov-view-content-source ;; view epub source
          "v" 'nov-view-source ;; view current chapter source
          )
        )
      )
    )
  )

;;; packages.el ends here
