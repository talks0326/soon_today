# == Schema Information
#
# Table name: profiles
#
#  id              :integer          not null, primary key
#  user_id         :integer          not null
#  gender          :boolean
#  name            :string(255)
#  birthday        :date
#  intro           :text(65535)
#  height          :integer
#  education_id    :string(255)
#  birth_place_id  :string(255)
#  work_id         :string(255)
#  place_id        :string(255)
#  active_location :string(255)
#  time_style_id   :string(255)
#  food_style_id   :string(255)
#  status          :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Profile < ActiveRecord::Base
	belongs_to :user
	belongs_to :education
	belongs_to :birth_place
	belongs_to :work
	belongs_to :place
	belongs_to :time_style
	belongs_to :food_style
	has_many :photos,as: :photable

	accepts_nested_attributes_for :photos,allow_destroy: true

	def get_photo(url)
		photo = self.photos.build
		unless url.blank?
			image_url = open(url)
		  	extension = image_url.content_type.split("/")[1]
		  	temp_images = Magick::Image.from_blob(image_url.read)
		  	temp_images[0].write(url = "/tmp/#{self.name}#{extension}")
		  	photo.data = File.open(url)
		  	photo.save
		  	image_url.close
		else
			url = "#{Rails.root}/public/icon_user_gray@3x.png"
			photo.data = File.open(url)
			photo.save
		end
	end
end
