# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  sender     :integer
#  receiver   :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :content, :sender_id, :receiver_id

  belongs_to :sender, :class_name => 'User'
  belongs_to :receiver, :class_name => "User"

  validates_presence_of :receiver_id, :sender_id
end
