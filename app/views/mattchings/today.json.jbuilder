json.set! 'tickets' do
	json.id 1
	json.set! 'time_style' do
		json.name "time_style"
	end
	json.set! 'food_style' do
		json.name "food_style"
	end
	json.set! 'active_location' do
		json.name "active_location"
	end
	json.set! 'user' do
		json.id 1
		json.set! 'profile' do
			json.partial! 'profile_test'
		end
	end
end