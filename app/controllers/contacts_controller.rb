class ContactsController < ApplicationController
  before_filter :load

  def load
    @contacts = Contact.recent.all
    @contact = Contact.new
  end

  def index

  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to contacts_url
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(params[:contact])
      redirect_to contacts_url
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_url
  end
end
