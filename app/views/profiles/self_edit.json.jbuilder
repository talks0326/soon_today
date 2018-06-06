json.set! 'user' do
	json.id @user.id
	json.profile_status @user.profile.status
	json.set! 'profile' do
		json.id @user.profile.id
		json.name @user.profile.name
		json.age get_age(@user.profile.birthday)
		json.intro @user.profile.intro
		json.height @user.profile.height
		json.set! 'education' do
			json.id	@user.profile.education_id
		end
		json.active_location @user.profile.active_location
		json.set! 'time_style' do
			json.id	@user.profile.time_style_id
		end
		json.set! 'food_style' do
			json.id	@user.profile.food_style_id
		end
		json.set! 'photos' do
			json.array!(@user.profile.photos) do |n|
				json.url "#{root_url.to_s.chop}#{n.data.url(:thumb,false)}"
			end
		end
	end
end
json.set! 'educations' do
	json.array!(Education.all) do |n|
		json.id n.id
		json.name n.name
	end
end
json.set! 'works' do
	json.array!(Work.all) do |n|
		json.id n.id
		json.name n.name
	end
end
json.set! 'birth_places' do
	json.array!(BirthPlace.all) do |n|
		json.id n.id
		json.name n.name
	end
end
json.set! 'time_styles' do
	json.array!(TimeStyle.all) do |n|
		json.id n.id
		json.name n.name
	end
end
json.set! 'food_styles' do
	json.array!(FoodStyle.all) do |n|
		json.id n.id
		json.name n.name
	end
end