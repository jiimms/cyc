class CreateWarwidows < ActiveRecord::Migration[5.0]
  def change
    create_table :warwidows do |t|
      t.string :name
      t.string :bio
      t.string :bankDetails

      t.timestamps
    end
  end
end
