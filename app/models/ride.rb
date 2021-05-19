class Ride < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :leader, class_name: :User, foreign_key: :user_id 
  has_many :riders, class_name: :User
end
