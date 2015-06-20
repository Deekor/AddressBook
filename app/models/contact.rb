class Contact
  include MongoMapper::Document

  key :name, String
  key :email, String
  key :phone, String
  key :address, String


end
