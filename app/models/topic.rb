class Topic < ApplicationRecord
  belongs_to :subject
  has_many :professions, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
