class AddGenderIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :gender_id, :integer
  end
end
