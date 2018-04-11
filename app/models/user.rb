# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#  token                  :string(255)
#  admin_flag             :boolean          default(FALSE)
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable,:omniauthable, :omniauth_providers => [:facebook]

	has_one :profile
	has_many :rooms
	has_many :likes
	has_many :unlikes
	has_many :tickets
	has_many :man_mattchings,class_name: "Mattching",foreign_key: "man_id"
	has_many :woman_mattchings,class_name: "Mattching",foreign_key: "woman_id"
	has_many :man_rooms,class_name: "Room",foreign_key: "man_id"
	has_many :woman_rooms,class_name: "Room",foreign_key: "woman_id"

  	def self.find_for_oauth(auth)
		user = User.where(uid: auth.uid, provider: auth.provider).first

		unless user
		  user = User.create(
		    uid:      auth.uid,
		    provider: auth.provider,
		    email:    auth.info.email,
		    password: Devise.friendly_token[0, 20]
		  )
		  profile = user.build_profile 
		  profile.name = auth.info.name
		  profile.gender = auth.info.gender.eql?("male") ? 0 : 1
		  profile.save

		  photo = profile.photos.build
		
		  photo.photo_type = 1
		  url = auth.info.image
		  image_url = open(url)
		  extension = image_url.content_type.split("/")[1]
		  temp_images = Magick::Image.from_blob(image_url.read)
		  temp_images[0].write(url = "/tmp/#{profile.name}#{extension}")
		  photo.data = File.open(url)
		  photo.save
		end
	
		user
	end

	def mattching_check(target_id)
		likes = Like.where(user_id: target_id,target_id: self.id)
		unless likes.blank?
			mattch = Mattching.new
			mattch.man_id = self.profile.gender? ? target_id : self.id
			mattch.woman_id = self.profile.gender? ? self.id : target_id
			exist_mattch = Mattching.where(man_id: mattch.man_id,woman_id: mattch.woman_id)
			if exist_mattch.blank?
				mattch.save
				room = Room.new
				room.man_id = self.profile.gender? ? target_id : self.id
				room.woman_id = self.profile.gender? ? self.id : target_id
				room.save
			else
				mattch = exist_mattch
			end
		end
		return mattch
	end    
end
