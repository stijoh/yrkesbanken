class YrkeResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :tema, as: :belongs_to
  field :materials, as: :has_many
end
