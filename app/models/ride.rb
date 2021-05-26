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
#
class Ride < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :leader, class_name: :User, foreign_key: :user_id 
  has_many :riders, class_name: :User
  has_many :comments, dependent: :destroy
end
