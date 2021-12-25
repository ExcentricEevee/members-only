class Post < ApplicationRecord
    belongs_to :user

    validates :title, presence: true, length: { in: 1..80 }
    validates :body, presence: true, length: { maximum: 2000 }
    validates :user_id, presence: true
end
