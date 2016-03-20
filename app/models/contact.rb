class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 4 }
	validates :address, presence: true
	validates :phonenumber, presence: true, length: { maximum: 11 }
	belongs_to :user
	paginates_per 50
end