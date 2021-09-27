class Post < ApplicationRecord

    validates :category, :content, :title, :author_name, presence: true
    validates_inclusion_of :category, in: %w(Lifestyle Music Food Fitness)
end
