class MyContactsController < ApplicationController
  before_action :check_user_signed_in

  def index
    @contacts = current_user.contacts.page(params[:page])
    
  end
end

