class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|

    	t.belongs_to :user
    	t.belongs_to :follower, class: 'User'

      t.timestamps
    end
  end
end
