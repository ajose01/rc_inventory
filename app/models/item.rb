class Item < ActiveRecord::Base
  belongs_to :user, foreign_key: :processed_by_id
end
