FactoryBot.define do

  factory :ride do
    association :riders, factory: :user
    user_id { "" }
    title { "5 Mile Loop" }
    date { Date.today + 2 }
    time { "13:00:00" }
    location { "Rockaways" }
    level { "All fitness levels" }
    tempo { "8mph or less" }
    group_size { 25 }
    slots { 25 }

    trait :without_title do
      title { nil }
    end

    factory :ride_without_title, traits: [:without_title]
  end
end
