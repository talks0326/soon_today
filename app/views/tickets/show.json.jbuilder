json.set! 'tickets' do
	json.id @id
	json.set! 'user' do
		json.id @id * @id
		json.set! 'profile' do
			json.name "広末涼子"
			json.age 23
			json.intro "自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。"
			json.set! 'photo' do
				json.url "http://biznot.xsrv.jp/wp/wp-content/uploads/2014/02/hirosue.jpg"
			end
		end
	end
	json.set! 'tags' do
		json.array!(1..2) do |n|
			json.name "サクッと"
		end
	end
end