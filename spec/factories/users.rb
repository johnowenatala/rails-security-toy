FactoryGirl.define do
  factory :user do
    name { [nil,Faker::Name.name, Faker::Name.first_name].sample }
    email { Faker::Internet.email }
    password { "#{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"} # nice random password
  end
end
