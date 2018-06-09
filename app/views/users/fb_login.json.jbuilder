json.set! 'users' do
	json.id @user.id
	json.access_token @user.access_token
	json.set! 'profile' do
		json.set! 'photo' do
			json.url "#{root_url.to_s.chop}#{@user.profile.photos.blank? ? "/icon_user_gray@3x.png" : @user.profile.photos.first.data.url(:thumb,false)}"
		end
	end
end