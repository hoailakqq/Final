class MyContactsController < ApplicationController
  before_action :check_user_signed_in

  def index
    @contacts = current_user.contacts.page(params[:page])
    respond_to do |format|
    	format.html
    	format.csv { send_data @contacts.to_csv }
    	format.xls # { send_data @contacts.to_csv(col_sep: "\t") }
  	end
  end
end

