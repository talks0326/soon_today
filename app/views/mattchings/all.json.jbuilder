json.set! 'users' do
	json.array!(1..10) do |n|
		json.id n * n
		json.set! 'profile' do
			json.name "広末涼子"
			json.age 23
			json.intro "自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。"
			json.set! 'photo' do
				json.url "http://biznot.xsrv.jp/wp/wp-content/uploads/2014/02/hirosue.jpg"
			end
		end
		json.set! 'tags' do
			json.array!(1..2) do |n|
				json.name "サクッと"
			end
		end
		json.mattching_type (n % 3) + 1
	end
end