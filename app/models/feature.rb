class Feature < ApplicationRecord
  belongs_to :profession
  validates :title, presence: true
end
