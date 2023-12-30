;;;; Create an executable for 'boing'

(pushnew (asdf:system-source-directory 'boing) ql:*local-project-directories*)
(ql:quickload :boing)
(ql:quickload :trivial-gamekit/distribution)
(gamekit.distribution:deliver :boing 'boing:boing :build-directory "../build")
