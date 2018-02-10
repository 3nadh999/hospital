class Chat < ApplicationRecord
  has_many :comments, class_name: "Chat",
                          foreign_key: "reply_id"
 
  belongs_to :reply, class_name: "Chat"
end
