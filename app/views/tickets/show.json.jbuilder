json.set! 'tickets' do
	json.id @id
	json.set! 'user' do
		json.id @id * @id
		json.set! 'profile' do
			json.partial! 'profile_test'
		end
	end
	json.set! 'tags' do
		json.array!(1..2) do |n|
			json.name "サクッと"
		end
	end
end