# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quality_performer, :class => 'QualityPerformers' do
    quality nil
    performer nil
    amount "9.99"
  end
end
