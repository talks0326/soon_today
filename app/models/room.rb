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
end
