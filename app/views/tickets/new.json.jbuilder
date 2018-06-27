json.set! 'today_login' do
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
end