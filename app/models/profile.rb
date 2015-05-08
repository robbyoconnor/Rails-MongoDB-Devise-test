class Profile
  include Mongoid::Document
  # Basic info
  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Integer
  field :dob, type: Time
  field :bio, type: String
end
