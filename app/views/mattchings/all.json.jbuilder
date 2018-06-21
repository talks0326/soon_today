json.set! 'users' do
	json.array!(1..10) do |n|
		json.id n * n
		json.set! 'profile' do
			json.partial! 'profile_test'
		end
		json.set! 'tags' do
			json.array!(1..2) do |n|
				json.name "サクッと"
			end
		end
		json.mattching_type (n % 3) + 1
	end
end