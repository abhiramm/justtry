# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :delivery_time_performer, :class => 'DeliveryTimePerformers' do
    delivery_time nil
    performer nil
    amount "9.99"
  end
end
