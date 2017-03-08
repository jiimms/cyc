class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.references :donor, foreign_key: true
      t.string :name
      t.string :amount
      t.integer :recepient_id

      t.timestamps
    end
  end
end
