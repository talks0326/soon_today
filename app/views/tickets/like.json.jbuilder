if @mattch == 0
	json.set! 'mattching' do
		json.set! 'users' do
			json.id @id * @id
			json.set! 'profile' do
				json.name "広末涼子"
				json.set! 'photo' do
					json.url "http://biznot.xsrv.jp/wp/wp-content/uploads/2014/02/hirosue.jpg"
				end
			end
		end
		json.set! 'ticket' do
			json.set! 'tags' do
				json.array!(1..2) do |n|
					json.name "サクッと"
				end
			end
		end
	end
end