;; Auto-generated. Do not edit!


(when (boundp 'light_robot::textmessage)
  (if (not (find-package "LIGHT_ROBOT"))
    (make-package "LIGHT_ROBOT"))
  (shadow 'textmessage (find-package "LIGHT_ROBOT")))
(unless (find-package "LIGHT_ROBOT::TEXTMESSAGE")
  (make-package "LIGHT_ROBOT::TEXTMESSAGE"))
(unless (find-package "LIGHT_ROBOT::TEXTMESSAGEREQUEST")
  (make-package "LIGHT_ROBOT::TEXTMESSAGEREQUEST"))
(unless (find-package "LIGHT_ROBOT::TEXTMESSAGERESPONSE")
  (make-package "LIGHT_ROBOT::TEXTMESSAGERESPONSE"))

(in-package "ROS")





(defclass light_robot::textmessageRequest
  :super ros::object
  :slots (_mystring ))

(defmethod light_robot::textmessageRequest
  (:init
   (&key
    ((:mystring __mystring) "")
    )
   (send-super :init)
   (setq _mystring (string __mystring))
   self)
  (:mystring
   (&optional __mystring)
   (if __mystring (setq _mystring __mystring)) _mystring)
  (:serialization-length
   ()
   (+
    ;; string _mystring
    4 (length _mystring)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mystring
       (write-long (length _mystring) s) (princ _mystring s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mystring
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mystring (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass light_robot::textmessageResponse
  :super ros::object
  :slots (_count ))

(defmethod light_robot::textmessageResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass light_robot::textmessage
  :super ros::object
  :slots ())

(setf (get light_robot::textmessage :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get light_robot::textmessage :datatype-) "light_robot/textmessage")
(setf (get light_robot::textmessage :request) light_robot::textmessageRequest)
(setf (get light_robot::textmessage :response) light_robot::textmessageResponse)

(defmethod light_robot::textmessageRequest
  (:response () (instance light_robot::textmessageResponse :init)))

(setf (get light_robot::textmessageRequest :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get light_robot::textmessageRequest :datatype-) "light_robot/textmessageRequest")
(setf (get light_robot::textmessageRequest :definition-)
      "string mystring

---

int32 count

")

(setf (get light_robot::textmessageResponse :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get light_robot::textmessageResponse :datatype-) "light_robot/textmessageResponse")
(setf (get light_robot::textmessageResponse :definition-)
      "string mystring

---

int32 count

")



(provide :light_robot/textmessage "b4834320f090e9235da913886638fb4e")


