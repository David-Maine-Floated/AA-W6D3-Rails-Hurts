class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :username, :name 
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
