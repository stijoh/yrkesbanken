class Topic < ApplicationRecord
  belongs_to :subject
  has_many :professions
  has_one :task
end
