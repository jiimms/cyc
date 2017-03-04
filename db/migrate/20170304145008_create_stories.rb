class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.references :recepient, foreign_key: true
      t.string :title
      t.string :body
      t.string :category

      t.timestamps
    end
  end
end
