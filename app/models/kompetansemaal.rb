class Kompetansemaal < ApplicationRecord
  belongs_to :fag
  validates :navn, :beskrivelse, presence: true
end
