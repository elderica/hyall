(import (os.path (split splitext join dirname))
        (glob (glob)))

(defn all []
  (list-comp
    (second (split (first (splitext file))))
    (file (glob (join (dirname __file__) "*.hy")))))

(setv __all__ (all))
