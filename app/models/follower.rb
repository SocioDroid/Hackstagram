class Follower < ApplicationRecord
    # belongs_to :acocunts
    validates_uniqueness_of :follower_id, scope: :following_id
end