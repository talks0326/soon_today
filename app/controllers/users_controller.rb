class UsersController < ApplicationController
	protect_from_forgery :except => [:fb_login]
	def fb_login
		if params[:users].present?
			if params[:uid].present? && params[:email].present?
				user = User.where(uid: params[:uid],email: params[:email])
			elsif params[:email].present?
				users = User.where(email: email)
			end
			if users.blank?
				user = User.new(user_params)
				user.password = Devise.friendly_token[0, 20]
				user.access_token = SecureRandom.base64(12)
				if user.save
					user.profile.get_photo(params[:users][:image_url])
					@user = user
				else
					head 400
				end
			else
				@user = users.first
			end
		else
			head 400
		end
	end

	def likes
		
	end

	private
	def user_params
		params.fetch(:users, {}).permit(user_attributes)
	end

	def user_attributes
		[
			:email,:uid,:provider,:fb_token,
			profile_attributes: [
				:name,:gender
			]
		]
	end
end
