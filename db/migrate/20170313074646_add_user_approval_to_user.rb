class AddUserApprovalToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :approval, :boolean, null: false, default: false
  end
end
