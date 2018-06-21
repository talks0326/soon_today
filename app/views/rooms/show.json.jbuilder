json.set! 'users' do
	json.id @id * @id
	json.set! 'profile' do
		json.partial! 'profile_test'
	end
end	
json.set! 'messages' do
	json.array!(1..20) do |n|
		json.user_id n % 2 == 0 ? @id : 1
		json.message_type 1
		json.content n % 5 == 0 ? "テキストテキストテキスト/nテキストテキストテキスト/nテキストテキストテキスト/n" : "テキストテキストテキスト"
		json.created_at @datetime.strftime("%Y/%m%d %H:%M")
	end
end