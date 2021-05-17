class Ride < ApplicationRecord
  belongs_to :owner, class_name: :User, foreign_key: :user_id 
  has_many :joinees, class_name: :User

  def format_date(date)

    

  end
end
