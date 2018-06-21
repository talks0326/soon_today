json.set! 'user' do
	json.id @user.id
	json.profile_status @user.profile.status
	json.set! 'profile' do
		render "profile"
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
json.set! 'active_locations' do
	json.array!(ActiveLocation.all) do |n|
		json.id n.id
		json.name n.name
	end
end