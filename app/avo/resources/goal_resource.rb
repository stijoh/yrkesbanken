class GoalResource < Avo::BaseResource
  self.title = :title
  self.includes = [:subject]

  field :id, as: :id
  field :title, as: :text
  field :description, as: :trix
  field :subject, as: :belongs_to
  # add fields here
end
