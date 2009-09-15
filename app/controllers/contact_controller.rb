class ContactController < ApplicationController
    
  def index
    redirect_to new_contact_path
  end

  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      flash[:notice] = "Successfully Sent Message!"
      redirect_to new_contact_path
    else
      render(:action => "new")
    end
  end
  
end
