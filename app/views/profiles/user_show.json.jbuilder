json.set! 'user' do
	json.id @id
	json.set! 'profile' do
		json.partial! 'profile_test'
	end
end