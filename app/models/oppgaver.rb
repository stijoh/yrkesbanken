class Oppgaver < ApplicationRecord
  belongs_to :tema
  has_many_attached :files
end
