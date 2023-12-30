(cl:in-package :boing)

(defvar *canvas-width* 800)
(defvar *canvas-height* 480)

(gamekit:register-resource-package :keyword (asdf:system-relative-pathname :boing "assets/"))

(gamekit:define-sound :music-theme "music/theme.ogg")

(gamekit:defgame boing () ()
    (:viewport-width *canvas-width*)
    (:viewport-height *canvas-height*)
    (:viewport-title "Boing!"))

(defmethod gamekit:post-initialize ((app boing))
    (gamekit:play-sound :music-theme :looped-p t))
