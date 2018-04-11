# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  end        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ticket < ActiveRecord::Base
	belongs_to :user
end
