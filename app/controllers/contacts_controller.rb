class ContactsController < ApplicationController
	before_action :check_user_signed_in, except: [:show]
	def index
		@contacts = Contact.order(created_at: :desc).page(params[:page])
	end

	def new
    @contact = Contact.new
  end

	def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user

    if @contact.save
      redirect_to @contact, notice: 'Đăng bài thành công'
    else
      render :new
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Sửa bài thành công'
    else
      render :edit
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy

    redirect_to my_contacts_path
  end

  def contact_params
    params.require(:contact).permit(:name, :address, :phonenumber, :noted)
  end
end