# frozen_string_literal: true

# ContactsController
#  - management of Contact resource - email message
#
class ContactsController < ApplicationController
  def create
    @contact = Contact.new
    @contact.assign_attributes(contact_params)
    if @contact.valid?
      ContactMailer.contact_with(@contact).deliver_later
      flash[:notice] = "Your message has been sent!"
      redirect_to controller: "pages", action: "home"
    else
      render "pages/home"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
