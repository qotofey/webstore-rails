class User::Role
  include Mongoid::Document
  field :position
  embedded_in :user
end
