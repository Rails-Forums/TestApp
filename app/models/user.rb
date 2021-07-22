class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # My bad I spelled destroy wrong thats why that errored out.
  has_many :posts, dependent: :destroy
end
