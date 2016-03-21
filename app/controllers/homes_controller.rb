class HomesController < ApplicationController
	def amthuc
		@companies = Company.where(["category_id = 1"]).page(params[:page])
	end

	def nhanghi
		@companies = Company.where(["category_id = 2"]).page(params[:page])
	end

	def thoitrang
		@companies = Company.where(["category_id = 3"]).page(params[:page])
	end

	def thethao
		@companies = Company.where(["category_id = 4"]).page(params[:page])
	end

	def yte
		@companies = Company.where(["category_id = 5"]).page(params[:page])
	end

	def dienmay
		@companies = Company.where(["category_id = 6"]).page(params[:page])
	end

	def noithat
		@companies = Company.where(["category_id = 7"]).page(params[:page])
	end

	def giaoduc
		@companies = Company.where(["category_id = 8"]).page(params[:page])
	end

	def vanhoa
		@companies = Company.where(["category_id = 9"]).page(params[:page])
	end

	def nongnghiep
		@companies = Company.where(["category_id = 10"]).page(params[:page])
	end

	def taichinh
		@companies = Company.where(["category_id = 11"]).page(params[:page])
	end
end