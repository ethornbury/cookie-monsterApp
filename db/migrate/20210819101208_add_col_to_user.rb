class AddColToUser < ActiveRecord::Migration[6.1]
  def change
	add_column :users, :nickname, :string
	#what :tableNAme, :newColumnName, :dataType
	add_column :users, :admin, :boolean, :default => false
  end
end
