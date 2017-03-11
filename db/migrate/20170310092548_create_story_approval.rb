class CreateStoryApproval < ActiveRecord::Migration[5.0]
  def change
    create_table :story_approvals do |t|
    	t.boolean :approved
    	t.integer :recepient_id, :story_id
    end
  end
end
