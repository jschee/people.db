class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.references :contact, foreign_key: true
      t.string :slug
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
