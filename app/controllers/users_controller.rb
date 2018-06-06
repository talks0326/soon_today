class UsersController < ApplicationController
	protect_from_forgery :except => [:fb_login]
	def fb_login
		if params[:users].present?
			if params[:uid].present? && params[:email].present?
				logger.debug("uid & email present")
				users = User.where(uid: params[:uid],email: params[:email])
				logger.debug(users.inspect)
			elsif params[:email].present?
				logger.debug("only email present")
				users = User.where(email: email)
				logger.debug(users.inspect)
			end
			if users.blank?
				user = User.new(user_params)
				user.password = Devise.friendly_token[0, 20]
				user.access_token = SecureRandom.base64(12)
				if user.save
					user.profile.get_photo(params[:users][:image_url])
					@user = user
				else
					logger.debug(user.errors.messages)
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
