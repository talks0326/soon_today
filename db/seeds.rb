# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user = User.first
#profile = user.profile
#photos = profile.photos
#1..10.times do |n|
#test_user = User.create(email: n.to_s + "_" + user.email,password: "assamdarje2013")
#test_profile = test_user.build_profile
#test_profile.name = profile.name
#test_profile.gender = true
#test_profile.birth_place = profile.birth_place
#test_profile.birthday = profile.birthday
#test_profile.self_introduction = profile.self_introduction
#test_profile.work = profile.work
#test_profile.place = profile.place
#test_profile.save
#photos.each do |p|
#test_photo = test_profile.photos.build
#test_photo.data = File.open(Rails.root.to_s+"/public"+p.data.url(:thumb,false))
#test_photo.save
#end
#end

array = ["test","test2","test3","test4","test5","test6","test7","test8"]
array.each do |a|
	BirthPlace.create(name: a)
	Works.create(name: a)
	TimeStyle.create(name: a)
	FoodStyle.create(name: a)
	Education.create(name: a)
end