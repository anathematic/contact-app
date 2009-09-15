class ContactController < ApplicationController
    
  def index
    redirect_to new_contact_path
  end

  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      flash[:notice] = "Successfully Send Message!"
      redirect_to contact_path(@contact)
    else
      render(:action => "new")
    end
  end
  
end
