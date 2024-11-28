require 'faker'
puts Faker::Name.name
puts Faker::Internet.username
puts Faker::Internet.email
puts Faker::Internet.domain_name
puts Faker::Internet.password(min_length: 8, max_length: 16)