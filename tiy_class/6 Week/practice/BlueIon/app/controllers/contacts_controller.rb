class ContactsController < ApplicationController
    def index
    @contact = Contact.new
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create contact_params
    if @contact.save
    redirect_to root_path
    else 
      render :new
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
