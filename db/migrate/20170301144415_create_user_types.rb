class CreateUserTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types do |t|

    	t.string :user_role

      t.timestamps
    end
  end
end
