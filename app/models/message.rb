# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  room_id      :integer          not null
#  user_id      :integer          not null
#  message_type :integer          not null
#  content      :text(65535)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Message < ActiveRecord::Base
end
