# == Schema Information
#
# Table name: profiles
#
#  id                :integer          not null, primary key
#  user_id           :integer          not null
#  gender            :boolean          not null
#  name              :string(255)      not null
#  birth_place       :string(255)
#  birthday          :date
#  self_introduction :text(65535)
#  work              :string(255)
#  place             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :photos,as: :photable

	accepts_nested_attributes_for :photos,allow_destroy: true
end
