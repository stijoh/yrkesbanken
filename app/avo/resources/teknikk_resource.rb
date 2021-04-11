class TeknikkResource < Avo::BaseResource
  self.title = :name
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :yrke, as: :belongs_to
end
