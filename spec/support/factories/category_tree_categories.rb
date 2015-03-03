FactoryGirl.define do
  factory :category, :class => 'CategoryTree::Category' do
    sequence(:code) { |n| "cat_#{n}" }
    name Faker::Name.name
    icon { Rack::Test::UploadedFile.new(File.join('spec', 'support', 'icon', 'question.jpg')) }
  end

end
