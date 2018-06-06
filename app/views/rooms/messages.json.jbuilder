json.set! 'messages' do
	json.user_id @id
	json.message_type 1
	json.content "content"
	json.created_at @datetime.strftime("%Y/%m%d %H:%M")
end