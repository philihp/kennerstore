FactoryGirl.define do
  factory :boardgame do
    title { FFaker::Lorem.words(2).map(&:capitalize).join(' ') }
  end
end
