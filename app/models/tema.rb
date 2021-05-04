class Tema < ApplicationRecord
  belongs_to :fag
  has_many :oppgavers, dependent: :destroy
  has_many :yrke_temas
  has_many :yrkes, through: :yrke_temas, dependent: :destroy
  validates :navn, presence: true
end
