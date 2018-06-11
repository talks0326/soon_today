class UsersController < ApplicationController
	protect_from_forgery :except => [:fb_login]
	def fb_login
		if params[:users].present?
			if params[:users][:uid].present? && params[:users][:email].present?
				logger.debug("uid & email present")
				users = User.where(uid: params[:users][:uid],email: params[:users][:email])
				logger.debug(users.inspect)
			elsif params[:users][:email].present?
				logger.debug("only email present")
				users = User.where(email: params[:users][:email])
				logger.debug(users.inspect)
			end
			if users.blank?
				user = User.new(user_params)
				user.password = Devise.friendly_token[0, 20]
				user.access_token = SecureRandom.hex(12)
				if user.save
					user.profile.create if user.profile.blank?
					user.profile.get_photo(params[:users][:image_url])
					@user = user
				else
					logger.debug(user.errors.messages)
					head 400
				end
			else
				@user = users.first
				logger.debug(@user.inspect)
			end
		else
			logger.debug("no users parametaer")
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
