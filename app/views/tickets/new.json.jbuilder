json.set! 'today_login' do
	json.set! 'items' do
		json.array!(1..3) do |n|
			json.id n
			json.name "item#{n}"
		end
	end
end