class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Message bien envoyé, merci!'
      redirect_to new_contact_path
    else
      flash[:error] = 'Une erreur est survenue. Veuillez réessayer.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :email, :objet, :message)
  end
end
