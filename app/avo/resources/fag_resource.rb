class FagResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :temas, as: :has_many, through: :yrke_temas
  field :oppgavers, as: :has_many
  field :kompetansemaal, as: :has_one
  field :yrkes, as: :has_many, through: :yrke_temas
  field :materials, as: :has_many
  field :saertrekks, as: :has_many
  field :fagutrykks, as: :has_many
  field :verktoys, as: :has_many
  field :teknikks, as: :has_many
end
