class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 4 }
	validates :address, presence: true
	validates :phonenumber, presence: true, length: { maximum: 11 }
	belongs_to :user
	belongs_to :category
	paginates_per 1
end