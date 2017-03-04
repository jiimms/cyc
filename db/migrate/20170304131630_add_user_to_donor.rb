class AddUserToDonor < ActiveRecord::Migration[5.0]
  def change
    add_column :donors, :user_id, :integer
  end
end
