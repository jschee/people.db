class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :slug
      t.string :relationship
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :country
      t.datetime :birthday
      t.string :avatar
      t.string :occupation
      t.string :company_website
      t.string :personal_website

      t.timestamps
    end
  end
end
