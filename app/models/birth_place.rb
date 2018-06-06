# == Schema Information
#
# Table name: birth_places
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BirthPlace < ActiveRecord::Base
	has_many :profiles
end
