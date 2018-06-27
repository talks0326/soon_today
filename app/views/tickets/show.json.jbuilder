json.set! 'tickets' do
	json.id @id
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
	json.set! 'user' do
		json.id @id * @id
		json.set! 'profile' do
			json.partial! 'profile_test'
		end
	end
end