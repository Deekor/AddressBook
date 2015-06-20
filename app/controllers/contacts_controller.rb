class ContactsController < ApplicationController
  
  # Shows all contacts
  def index
  	@contacts = Contact.all
  end

  # Show an individual contact info
  def show
  	@contacts = Contact.all
  	@contact = Contact.find_by_permalink(params[:permalink])
  end

  # New contact form
  def new
  	@contact = Contact.new
  end

  # Edit a contact
  def edit
  	@contact = Contact.find_by_permalink(params[:permalink])
  end

  # Update edited contact
  def update
  	@contact = Contact.find_by_permalink(params[:permalink])
  	@contact.update_attributes(params[:contact])
  	redirect_to show_contact_path(@contact.permalink), notice: "Contact Updated!"
  end

  # Create a new contact
  def create
  	@contact = Contact.create(params[:contact])
  	redirect_to :root, notice: "Contact Created!"
  end

  # Delete a contact
  def destroy
  	@contact = Contact.find_by_permalink(params[:permalink])
  	@contact.destroy
  	redirect_to :root, notice: "Contact Deleted!"
  end


end
