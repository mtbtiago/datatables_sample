class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :dob, :date
    add_column :users, :card, :integer
  end
end
