class Post < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :place, presence: true, length: { maximum: 10 }
  validates :memo, length: {maximum: 500 }
end
