class SubjectResource < Avo::BaseResource
  self.title = :title

  field :id, as: :id
  field :title, as: :text
  field :topics, as: :has_many
  field :goal, as: :has_one
end
