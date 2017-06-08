FactoryGirl.define do
  factory :secure_file do
    association :owner, factory: :user
    filename { Faker::File.file_name( SecureRandom.hex(18) ) }
    content_type { Faker::File.mime_type }
    name { File.basename(filename) }
    restricted { Faker::Boolean.boolean }
  end
end
