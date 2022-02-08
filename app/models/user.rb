class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :phone, type: String
  field :email, type: String
  field :birth_date, type: Date
  field :gender, type: String

  # enum gender: {
  #   male: 'male',
  #   female: 'female'
  # }
end
