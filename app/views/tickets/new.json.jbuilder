json.set! 'today_login' do
	json.set! 'time_styles' do
		json.array!(TimeStyle.all) do |n|
			json.id n.id
			json.name n.name
			json.image_url n.photo.blank? ? "#{root_url.to_s.chop}/icon_back_gray@3x.png" : n.photo.data.url(:thumb,false)
		end
	end
	json.set! 'food_styles' do
		json.array!(FoodStyle.all) do |n|
			json.id n.id
			json.name n.name
			json.image_url n.photo.blank? ? "#{root_url.to_s.chop}/icon_back_gray@3x.png" : n.photo.data.url(:thumb,false)
		end
	end
	json.set! 'active_locations' do
		json.array!(ActiveLocation.all) do |n|
			json.id n.id
			json.name n.name
			json.image_url n.photo.blank? ? "#{root_url.to_s.chop}/icon_back_gray@3x.png" : n.photo.data.url(:thumb,false)
		end
	end
end