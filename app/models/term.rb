class Term < ApplicationRecord
  belongs_to :profession
  validates :title, presence: true
end
