# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    location_id 1
    performer_id 1
    duration_id 1
    quality_id 1
    delivery_id 1
    category_id 1
  end
end
