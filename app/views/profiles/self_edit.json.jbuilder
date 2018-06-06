json.set! 'user' do
	json.id @user.id
	json.profile_status @user.profile.status
	json.set! 'profile' do
		json.name @user.profile.name
		json.age get_age(@user.profile.birthday)
		json.intro @user.profile.intro
		json.height 160
		json.set! 'education' do
			json.id	1
		end
		json.set! 'birth_place' do
			json.id	1
		end
		json.active_location "新宿"
		json.set! 'time_style' do
			json.id	1
		end
		json.set! 'food_style' do
			json.id	1
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
json.set! 'educations' do
	json.array!(1..6) do |n|
		json.id n
		json.name "学歴#{n}"
	end
end
json.set! 'birth_places' do
	json.array!(1..47) do |n|
		json.id n
		json.name "都道府県#{n}"
	end
end
json.set! 'time_styles' do
	json.array!(1..8) do |n|
		json.id n
		json.name "タイムスタイル#{n}"
	end
end
json.set! 'food_styles' do
	json.array!(1..8) do |n|
		json.id n
		json.name "フードスタイル#{n}"
	end
end