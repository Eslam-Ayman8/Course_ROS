; Auto-generated. Do not edit!


(cl:in-package light_robot-srv)


;//! \htmlinclude textmessage-request.msg.html

(cl:defclass <textmessage-request> (roslisp-msg-protocol:ros-message)
  ((mystring
    :reader mystring
    :initarg :mystring
    :type cl:string
    :initform ""))
)

(cl:defclass textmessage-request (<textmessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <textmessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'textmessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_robot-srv:<textmessage-request> is deprecated: use light_robot-srv:textmessage-request instead.")))

(cl:ensure-generic-function 'mystring-val :lambda-list '(m))
(cl:defmethod mystring-val ((m <textmessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_robot-srv:mystring-val is deprecated.  Use light_robot-srv:mystring instead.")
  (mystring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <textmessage-request>) ostream)
  "Serializes a message object of type '<textmessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mystring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mystring))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <textmessage-request>) istream)
  "Deserializes a message object of type '<textmessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mystring) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mystring) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<textmessage-request>)))
  "Returns string type for a service object of type '<textmessage-request>"
  "light_robot/textmessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'textmessage-request)))
  "Returns string type for a service object of type 'textmessage-request"
  "light_robot/textmessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<textmessage-request>)))
  "Returns md5sum for a message object of type '<textmessage-request>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'textmessage-request)))
  "Returns md5sum for a message object of type 'textmessage-request"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<textmessage-request>)))
  "Returns full string definition for message of type '<textmessage-request>"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'textmessage-request)))
  "Returns full string definition for message of type 'textmessage-request"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <textmessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mystring))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <textmessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'textmessage-request
    (cl:cons ':mystring (mystring msg))
))
;//! \htmlinclude textmessage-response.msg.html

(cl:defclass <textmessage-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass textmessage-response (<textmessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <textmessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'textmessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_robot-srv:<textmessage-response> is deprecated: use light_robot-srv:textmessage-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <textmessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_robot-srv:count-val is deprecated.  Use light_robot-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <textmessage-response>) ostream)
  "Serializes a message object of type '<textmessage-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <textmessage-response>) istream)
  "Deserializes a message object of type '<textmessage-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<textmessage-response>)))
  "Returns string type for a service object of type '<textmessage-response>"
  "light_robot/textmessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'textmessage-response)))
  "Returns string type for a service object of type 'textmessage-response"
  "light_robot/textmessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<textmessage-response>)))
  "Returns md5sum for a message object of type '<textmessage-response>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'textmessage-response)))
  "Returns md5sum for a message object of type 'textmessage-response"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<textmessage-response>)))
  "Returns full string definition for message of type '<textmessage-response>"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'textmessage-response)))
  "Returns full string definition for message of type 'textmessage-response"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <textmessage-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <textmessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'textmessage-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'textmessage)))
  'textmessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'textmessage)))
  'textmessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'textmessage)))
  "Returns string type for a service object of type '<textmessage>"
  "light_robot/textmessage")