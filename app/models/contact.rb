class Contact
  include MongoMapper::Document

  after_create :generate_permalink

  key :name, String
  key :email, String
  key :phone, String
  key :address, String
  key :permalink, String

  private 

  def generate_permalink
  	self.permalink = self.name.downcase.gsub(" ", "-")
  	self.save
  end

end
