class Subject < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  has_one :goal, dependent: :destroy
  validates :title, presence: true
end
