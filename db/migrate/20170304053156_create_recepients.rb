class CreateRecepients < ActiveRecord::Migration[5.0]
  def change
    create_table :recepients do |t|
      t.string :about_info
      t.string :home_address
      t.string :country_of_origin
      t.string :reason_for_need
      t.string :need_amount

      t.timestamps
    end
  end
end
