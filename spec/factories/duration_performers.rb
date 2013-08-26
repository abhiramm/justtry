# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :duration_performer, :class => 'DurationPerformers' do
    duration nil
    performer nil
    amount "9.99"
  end
end
