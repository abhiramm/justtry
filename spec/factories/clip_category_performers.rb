# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :clip_category_performer, :class => 'ClipCategoryPerformers' do
    clip_category nil
    performer nil
    amount "9.99"
  end
end
