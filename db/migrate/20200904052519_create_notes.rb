class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :slug
      t.references :contact, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
