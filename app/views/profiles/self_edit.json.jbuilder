json.set! 'user' do
	json.id @user.id
	json.profile_status @user.profile.status
	json.profile_progress 100
	json.set! 'profile' do
		json.partial! 'profile_partial',profile: @user.profile
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