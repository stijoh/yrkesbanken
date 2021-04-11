class Fag < ApplicationRecord
  has_many :temas, dependent: :destroy
  has_one :kompetansemaal, dependent: :destroy
  has_many :yrkes, through: :temas
  has_many :materials, through: :yrkes
  has_many :saertrekks, through: :yrkes
  has_many :fagutrykks, through: :yrkes
  has_many :teknikks, through: :yrkes
  has_many :verktoys, through: :yrkes
  has_many :oppgavers, through: :temas
end
