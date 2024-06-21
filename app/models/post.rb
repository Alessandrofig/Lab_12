class Post < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :posts_tags
    has_many :comments

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true
    validates :answers_count, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validate :set_published_at

    private
        def set_published_at
            self.published_at = Time.now unless published_at.present?
        end
end