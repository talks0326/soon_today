json.set! 'tickets' do
	json.array!(1..10) do |n|
		json.id n
		json.set! 'time_style' do
			json.name "20時"
		end
		json.set! 'food_style' do
			json.name "和食"
		end
		json.set! 'active_location' do
			json.name "新宿"
		end
		json.set! 'user' do
			json.id n * n
			json.set! 'profile' do
				json.partial! 'profile_test'
			end
		end
	end
end