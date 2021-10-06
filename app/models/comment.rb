class Comment < ApplicationRecord
    validates :content, :name, presence: true
    belongs_to :post
end
