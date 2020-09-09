class AddStateToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :state, :string
    add_column :contacts, :industry, :string
  end
end
