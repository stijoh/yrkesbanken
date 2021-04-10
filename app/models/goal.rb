class Goal < ApplicationRecord
  belongs_to :subject
  validates :title, :description, presence: true
end
