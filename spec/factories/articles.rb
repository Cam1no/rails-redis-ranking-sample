FactoryBot.define do
  factory :article do
    association :user
    title { Faker::Myst.game }
    content { Faker::Myst.quote }
  end
end
