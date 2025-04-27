class Post < ApplicationRecord
  belongs_to :user

  has_many :bookmarks, dependent: :destroy
  has_many :action_logs, dependent: :destroy
  accepts_nested_attributes_for :action_logs, allow_destroy: true

  validates :date, presence: true
  validates :place, presence: true, length: { maximum: 10 }
  validates :memo, length: {maximum: 500 }

  mount_uploader :image, ImageUploader
end
