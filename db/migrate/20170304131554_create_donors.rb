class CreateDonors < ActiveRecord::Migration[5.0]
  def change
    create_table :donors do |t|
      t.string :about_info
      t.string :home_address
      t.string :country_of_origin
      t.string :reason_to_help

      t.timestamps
    end
  end
end
