class Home < ActiveRecord::Base
	has_many :companies
	paginates_per 1
end