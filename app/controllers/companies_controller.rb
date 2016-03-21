class CompaniesController < ApplicationController
  before_action :check_user_signed_in, except: [:show,:index]

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user

    if @company.save
      redirect_to root_path, notice: 'Đăng bài thành công'
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end
  
  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to @company, notice: 'Sửa bài thành công'
    else
      render :edit
    end
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy

    redirect_to root_path
  end

  def index
    @companies = Company.order(created_at: :desc).page(params[:page])
  end

  def company_params
    params.require(:company).permit(:name, :phonenumber, :address, :noted, :image, :category_id)
  end
end
