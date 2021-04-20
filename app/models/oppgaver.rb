class Oppgaver < ApplicationRecord
  belongs_to :tema
  has_one_attached :file
end
