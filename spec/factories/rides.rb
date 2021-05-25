# == Schema Information
#
# Table name: rides
#
#  id         :integer          not null, primary key
#  date       :date
#  distance   :decimal(, )
#  group_size :integer
#  level      :string
#  location   :string
#  slots      :integer
#  tempo      :string
#  time       :time
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_rides_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do

  factory :ride do
    association :riders, factory: :user
    sequence(:user_id) { |n| n }
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
