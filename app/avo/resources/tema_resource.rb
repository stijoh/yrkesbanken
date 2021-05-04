class TemaResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :fag, as: :belongs_to
  field :oppgavers, as: :has_many
  field :yrkes, as: :has_many, through: :yrke_temas
end
