
FactoryGirl.define do
  factory :indicator, :class => Refinery::Indicators::Indicator do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

