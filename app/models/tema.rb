class Tema < ApplicationRecord
  belongs_to :fag
  has_many :oppgavers, dependent: :destroy
  has_many :yrkes, dependent: :destroy
  validates :navn, presence: true
end
