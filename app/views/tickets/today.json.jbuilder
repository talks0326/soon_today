json.set! 'tickets' do
	json.array!(1..10) do |n|
		json.id n
		json.set! 'time_style' do
			json.name n.name
		end
		json.set! 'food_style' do
			json.name n.name
		end
		json.set! 'active_location' do
			json.name n.name
		end
		json.set! 'user' do
			json.id n * n
			json.set! 'profile' do
				json.partial! 'profile_test'
			end
		end
	end
end