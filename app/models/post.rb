class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :file

  scope :by_newest, -> { self.order(created_at: :desc) }
end
