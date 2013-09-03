# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :performer do
    first_name "MyString"
    white_label_id 1
    location_id 1
    avatar "MyString"
    location "MyString"
    photo_id "MyString"
    profile_thumb "MyString"
    profile_gif "MyString"
  end
end
