class AddFamilyIdToMessage < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages, :family_id, :integer
  end
end
