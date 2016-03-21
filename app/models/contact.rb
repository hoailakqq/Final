class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 4 }
	validates :address, presence: true
	validates :phonenumber, presence: true, length: { maximum: 11 }
	belongs_to :user
	belongs_to :category
	paginates_per 1
	def self.to_csv(options = {})
  	CSV.generate(options) do |csv|
    csv << column_names
    csv.each do |contact|
      csv << contact.attributes.values_at(*column_names)
    end
  end
end
end