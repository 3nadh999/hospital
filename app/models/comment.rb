class Comment < ApplicationRecord
	has_many :replies , class_name: "Comment", foreign_key: "reply_id"
end
