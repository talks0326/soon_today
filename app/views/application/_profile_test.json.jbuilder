json.id 1
json.name "広末涼子"
json.age "28"
json.intro "自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。/n自己紹介自己紹介自己紹介。"
json.height 160
json.set! 'education' do
	json.id	1
end
json.set! 'work' do
	json.id	1
end
json.set! 'photos' do
	json.array!(1..4) do |n|
		json.url "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/282670_10150863966757056_946026273_n.jpg?_nc_cat=0&oh=e9e28377362887bfd77f30a774aefab2&oe=5BE7D766"
	end
end