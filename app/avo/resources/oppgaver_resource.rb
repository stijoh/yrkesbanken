class OppgaverResource < Avo::BaseResource
  self.title = :navn
  self.includes = []

  field :id, as: :id
  field :navn, as: :text
  field :beskrivelse, as: :trix, attachment_key: :files
  field :tema, as: :belongs_to
end
