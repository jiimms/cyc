class AddUserToRecepients < ActiveRecord::Migration[5.0]
  def change
    add_column :recepients, :user_id, :integer
  end
end
