class Profession < ApplicationRecord
  belongs_to :topic
  has_many :features
  has_many :tools
  has_many :materials
  has_many :techniques
  has_many :terms
end
