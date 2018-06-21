json.set! 'tickets' do
	json.array!(1..10) do |n|
		json.id n
		json.set! 'user' do
			json.id n * n
			json.set! 'profile' do
				render partial: "profile_test"
			end
		end
		json.set! 'tags' do
			json.array!(1..2) do |n|
				json.name "サクッと"
			end
		end
	end
end