
FactoryGirl.define do
  factory :survey, :class => Refinery::Surveys::Survey do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

