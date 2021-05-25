# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ride_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_comments_on_ride_id  (ride_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  ride_id  (ride_id => rides.id)
#  user_id  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :ride, foreign_key: :ride_id
  has_one :commenter, class_name: :User, foreign_key: :user_id
end
