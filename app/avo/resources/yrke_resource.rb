class YrkeResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :temas, as: :has_many, through: :yrke_temas
  field :materials, as: :has_many
  field :saertrekks, as: :has_many
end
