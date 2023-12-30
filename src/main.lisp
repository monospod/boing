(cl:in-package :boing)

(defvar *canvas-width* 800)
(defvar *canvas-height* 480)
(defvar *title* "Boing!")

(defvar *half-width* (/ *canvas-width* 2))
(defvar *half-height* (/ *canvas-height* 2))

(defvar *player-speed* 6)
(defvar *max-ai-speed* 6)

(defun hypotenuse (x y)
  "Return the hypotenuse of a triangle of sides x and y."
  (sqrt (+ (* x x) (* y y))))

(defun normalized (x y)
  "Return a unit vector."
  (let ((length (hypotenuse x y)))
    (list (/ x length) (/ y length))))

(defun sign (x)
  "Return -1 or 1, depending on whether x is positive or negative."
  (if (< x 0) -1 1))

(gamekit:register-resource-package :keyword (asdf:system-relative-pathname :boing "assets/"))

(gamekit:define-sound :music-theme "music/theme.ogg")
(gamekit:define-image :menu-image "images/menu0.png")

(gamekit:defgame boing () ()
    (:viewport-width *canvas-width*)
    (:viewport-height *canvas-height*)
    (:viewport-title *title*))

(defmethod gamekit:draw ((app boing))
  (gamekit:draw-image (gamekit:vec2 0 0) :menu-image))

(defmethod gamekit:post-initialize ((app boing))
    (gamekit:play-sound :music-theme :looped-p t))
