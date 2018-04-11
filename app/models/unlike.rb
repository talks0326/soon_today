# == Schema Information
#
# Table name: unlikes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  target_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unlike < ActiveRecord::Base
	belongs_to :user
	belongs_to :target,class_name: "User"
end
