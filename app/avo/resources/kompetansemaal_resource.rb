class KompetansemaalResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :beskrivelse, as: :trix
  field :fag, as: :belongs_to
end
