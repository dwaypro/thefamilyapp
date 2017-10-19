class AddNameToFamily < ActiveRecord::Migration[5.1]
  def change
  	add_column :families, :name, :string, null: false
  end
end
