class Task < ApplicationRecord
  belongs_to :topic
  validates :title, :description, presence: true
end
