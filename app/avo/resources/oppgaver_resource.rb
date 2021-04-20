class OppgaverResource < Avo::BaseResource
  self.title = :navn
  self.includes = []
  field :id, as: :id
  field :navn, as: :text
  field :beskrivelse, as: :textarea, rows: 5
  field :file, as: :file
  field :tema, as: :belongs_to
end
