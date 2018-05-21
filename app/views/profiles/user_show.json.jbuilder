json.set! 'user' do
	json.id @id
	json.set! 'profile' do
		json.name "広末涼子"
		json.age 23
		json.intro "自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。"
		json.height 160
		json.set! 'education' do
			json.name "大学卒"
		end
		json.set! 'work' do
			json.name "女優"
		end
		json.set! 'birth_place' do
			json.name "高知県"
		end
		json.set! 'photos' do
			json.array!(1..4) do |n|
				if n % 2 == 0
					json.url "https://i1.wp.com/clearskin.life/wp-content/uploads/2018/02/599063a2d67ba196c0557bbc90515340.jpg?resize=615%2C380&ssl=1"
				else
					json.url "http://biznot.xsrv.jp/wp/wp-content/uploads/2014/02/hirosue.jpg"
				end
			end
		end
	end
end