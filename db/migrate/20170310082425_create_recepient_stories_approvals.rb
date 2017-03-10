class CreateRecepientStoriesApprovals < ActiveRecord::Migration[5.0]
  def change
    create_table :recepient_stories_approvals do |t|

    	t.boolean :approved
    	t.integer :recepient_id, :story_id

    	t.timestamps
    end
  end
end
