# The create! method raises an exception for an invalid user by avoiding silent errors.
User.create!(name:                  "Example User",
             email:                 "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:                  "Pierre Lasante",
             email:                 "pierre.lasante@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)
             
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:               password,
               password_confirmation:  password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
