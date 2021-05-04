class Yrke < ApplicationRecord
  has_many :yrke_temas
  has_many :temas, through: :yrke_temas
  has_many :materials, dependent: :destroy
  has_many :saertrekks, dependent: :destroy
  has_many :verktoys, dependent: :destroy
  has_many :teknikks, dependent: :destroy
  has_many :fagutrykks, dependent: :destroy
  validates :navn, presence: true
end
