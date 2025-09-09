class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: 'Gracias por su mensaje nos comunicaremos pronto!!'
    else
      render turbo_stream: turbo_stream.replace(
        "contact_form",
        partial: "contacts/form_frame",
        locals: { contact: @contact }
      ), status: :unprocessable_entity
    end
  end
end
