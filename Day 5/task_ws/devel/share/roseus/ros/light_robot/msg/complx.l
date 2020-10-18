;; Auto-generated. Do not edit!


(when (boundp 'light_robot::complx)
  (if (not (find-package "LIGHT_ROBOT"))
    (make-package "LIGHT_ROBOT"))
  (shadow 'complx (find-package "LIGHT_ROBOT")))
(unless (find-package "LIGHT_ROBOT::COMPLX")
  (make-package "LIGHT_ROBOT::COMPLX"))

(in-package "ROS")
;;//! \htmlinclude complx.msg.html


(defclass light_robot::complx
  :super ros::object
  :slots (_real _imaginary ))

(defmethod light_robot::complx
  (:init
   (&key
    ((:real __real) 0)
    ((:imaginary __imaginary) 0)
    )
   (send-super :init)
   (setq _real (round __real))
   (setq _imaginary (round __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; int32 _real
    4
    ;; int32 _imaginary
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _real
       (write-long _real s)
     ;; int32 _imaginary
       (write-long _imaginary s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _real
     (setq _real (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _imaginary
     (setq _imaginary (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get light_robot::complx :md5sum-) "29494601c99dbe58165af75a7e636359")
(setf (get light_robot::complx :datatype-) "light_robot/complx")
(setf (get light_robot::complx :definition-)
      "int32 real
int32 imaginary

")



(provide :light_robot/complx "29494601c99dbe58165af75a7e636359")


