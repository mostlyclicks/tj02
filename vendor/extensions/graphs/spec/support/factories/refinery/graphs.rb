
FactoryGirl.define do
  factory :graph, :class => Refinery::Graphs::Graph do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

