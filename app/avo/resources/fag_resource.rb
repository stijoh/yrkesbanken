class FagResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :oppgavers, as: :has_many
  field :kompetansemaal, as: :has_one
  field :temas, as: :has_many, through: :yrke_temas
end
