json.set! 'tickets' do
	json.array!(1..10) do |n|
		json.id n
		json.like false
		json.set! 'time_style' do
			json.partial! 'time_style_test'
		end
		json.set! 'food_style' do
			json.partial! 'food_style_test'
		end
		json.set! 'active_location' do
			json.partial! 'active_location_test'
		end
		json.set! 'user' do
			json.id n * n
			json.set! 'profile' do
				json.partial! 'profile_test'
			end
		end
	end
end