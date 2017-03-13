class AddCategoryIdToRecepients < ActiveRecord::Migration[5.0]
  def change
    add_column :recepients, :category_id, :integer
  end
end
