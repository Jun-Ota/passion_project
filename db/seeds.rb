require 'faker'
  number_of_users_wanted = 20
  new_users_needed = number_of_users_wanted - User.count

new_users_needed.times do
   user = { user_name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Name.first_name }
   user = User.new(user)
   user.save
end


 number_of_kudos_wanted = 20
  new_kudos_needed = number_of_kudos_wanted - Kudo.count

new_kudos_needed.times do
   kudo = { user_name: Faker::Name.name, subject: Faker::Book.title, description: Faker::Name.title, applause: rand(1..20) }
   kudo = Kudo.new(user)
   kudo.save
end



