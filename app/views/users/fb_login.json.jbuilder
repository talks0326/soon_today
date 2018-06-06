json.set! 'users' do
	json.access_token @user.access_token
	json.set! 'profile' do
		json.set! 'photo' do
			json.url "#{root_url.to_s.chop}#{@user.profile.photos.first.data.url(:thumb,false)}"
		end
	end
end