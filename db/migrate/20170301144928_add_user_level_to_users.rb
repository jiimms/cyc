class AddUserLevelToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :UserType, foreign_key: true
  end
end
