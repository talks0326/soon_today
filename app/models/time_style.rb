# == Schema Information
#
# Table name: time_styles
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TimeStyle < ActiveRecord::Base
	has_many :profiles
end
