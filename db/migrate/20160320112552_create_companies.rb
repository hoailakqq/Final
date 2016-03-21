class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :name
      t.text :address
      t.integer :phonenumber
      t.text :noted

      t.timestamps null: false
    end
  end
end
