class Profession < ApplicationRecord
  belongs_to :topic
  has_many :materials, dependent: :destroy
  has_many :features, dependent: :destroy
  has_many :tools, dependent: :destroy
  has_many :techniques, dependent: :destroy
  has_many :terms, dependent: :destroy
  validates :title, presence: true
end
