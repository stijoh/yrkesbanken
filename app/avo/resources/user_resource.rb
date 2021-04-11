class UserResource < Avo::BaseResource
  self.title = :id

  field :id, as: :id
  field :email, as: :text
  field :password, as: :password, placeholder: 'secret'
  field :admin, as: :boolean
end
