json.id profile.id
json.name profile.name
json.age get_age(profile.birthday)
json.intro profile.intro
json.height profile.height
json.set! 'education' do
	json.id	profile.education_id
end
json.set! 'work' do
	json.id	profile.work_id
end
json.set! 'photos' do
	json.array!(profile.photos) do |n|
		json.url "#{root_url.to_s.chop}#{n.data.url(:thumb,false)}"
	end
end