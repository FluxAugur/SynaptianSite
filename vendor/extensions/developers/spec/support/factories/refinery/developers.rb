
FactoryGirl.define do
  factory :developer, :class => Refinery::Developers::Developer do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

