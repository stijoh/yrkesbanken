class FagResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :temas, as: :has_many
  field :oppgavers, as: :has_many
  field :kompetansemaal, as: :has_one
  field :yrkes, as: :has_many
  field :materials, as: :has_many
end
