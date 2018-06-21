json.set! 'user' do
	json.id @id
	json.set! 'profile' do
		render partial: "profile_test"
	end
end