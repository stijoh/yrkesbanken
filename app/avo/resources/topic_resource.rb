class TopicResource < Avo::BaseResource
  self.title = :id
  self.includes = [:subject]


  field :id, as: :id
  field :title, as: :text
  field :subject, as: :belongs_to
end
