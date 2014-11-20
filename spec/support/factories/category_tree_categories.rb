FactoryGirl.define do
  factory :category, :class => 'CategoryTree::Category' do
    sequence(:code) { |n| "cat_#{n}" }
    name Faker::Name.name
  end

end
