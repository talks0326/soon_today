# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  man_id     :integer          not null
#  woman_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ActiveRecord::Base
	belongs_to :man,class_name: "User",foreign_key: "man_id"
	belongs_to :woman,class_name: "User",foreign_key: "woman_id"

	has_many :messages
end
