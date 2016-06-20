FactoryGirl.define do
  factory :boardgame do
    title FFaker::Lorem.words(rand(3)+1).map(&:capitalize).join(' ')
  end
end
