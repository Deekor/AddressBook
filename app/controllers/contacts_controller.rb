class ContactsController < ApplicationController
  
  # Shows all contacts
  def index
  	@contacts = Contact.all
  end

  # Show an individual contact info
  def show
  	
  end

  # New contact form
  def new
  	@contact = Contact.new
  end

  # Create a new contact
  def create
  	
  end

  # Delete a contact
  def destroy
  	
  end


end
