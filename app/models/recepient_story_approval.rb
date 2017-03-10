class RecepientStoryApproval < ApplicationRecord
self.table_name = "recepient_stories_approval"
belongs_to :recepient
belongs_to :story

end