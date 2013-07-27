class Message < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :sender_id, :receiver_id, :subject, :content, :unread

  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"

end

