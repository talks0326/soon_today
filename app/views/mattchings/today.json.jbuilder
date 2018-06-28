json.set! 'tickets' do
	json.id @id
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
		json.id @id * @id
		json.set! 'profile' do
			json.partial! 'profile_test'
		end
	end
end